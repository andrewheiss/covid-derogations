create_lookups <- function() {
  emlaw_lookup <- tribble(
    ~emlaw, ~emlaw_fct, ~emlaw_cond,
    1, "Declaration in existing legal framework", "Emergency response with legal instruments",
    2, "Declaration in existing legal framework, distinguishes public health emergency", "Emergency response with legal instruments",
    3, "Declaration of disaster where different from emergency", "Emergency response with legal instruments",
    4, "Declaration using other legislation", "Emergency response with legal instruments",
    5, "Emergency response without legal instruments", "Emergency response without legal instruments",
    6, "No emergency response", "No emergency response",
    7, "Other", "Other"
  )

  regime_lookup <- tribble(
    ~v2x_regime, ~regime,
    0, "Closed autocracy",
    1, "Electoral autocracy",
    2, "Electoral democracy",
    3, "Liberal democracy"
  ) %>%
    mutate(regime = fct_inorder(regime, ordered = TRUE))

  type_lookup <- tribble(
    ~type, ~type_clean,
    "A", "Derogated as intended",
    "B", "Derogated; measures not temporary, proportional, or necessary",
    "C", "Emergency declared; no formal derogation",
    "D", "No emergency; no formal derogation",
    "E", "Has not ratified ICCPR"
  ) %>%
    mutate(type_clean_letter = paste0(type, ": ", type_clean)) %>%
    mutate(across(starts_with("type"), ~fct_inorder(., ordered = TRUE)))

  civicus_lookup <- tribble(
    ~value, ~category,
    1, "Closed",
    2, "Repressed",
    3, "Obstructed",
    4, "Narrowed",
    5, "Open"
  ) %>%
    mutate(category = fct_inorder(category, ordered = TRUE))

  return(list(emlaw = emlaw_lookup,
              regime = regime_lookup,
              type = type_lookup,
              civicus = civicus_lookup))
}

load_clean_pandem <- function(path, lookup) {
  pandem_raw <- read_csv(path, col_types = cols()) %>% suppressWarnings()

  pandem_clean <- pandem_raw %>%
    mutate(ndrights_fct = factor(ndrights, levels = 0:1,
                                 labels = c("No violations", "Violations of non-derogable rights"))) %>%
    group_by(country_name) %>%
    mutate(emlaw_min = min(emlaw),
           pandem_max = max(pandem),
           panback_max = max(panback)) %>%
    ungroup() %>%
    left_join(lookup$emlaw, by = "emlaw") %>%
    left_join(rename_with(lookup$emlaw, ~str_c(., "_min"), everything()), by = "emlaw_min") %>%
    left_join(lookup$regime, by = "v2x_regime") %>%
    mutate(emlaw_fct = factor(emlaw_fct, levels = lookup$emlaw$emlaw_fct, ordered = TRUE),
           emlaw_cond = factor(emlaw_cond, levels = unique(lookup$emlaw$emlaw_cond), ordered = TRUE)) %>%
    mutate(emlaw_min_fct = factor(emlaw_fct, levels = lookup$emlaw$emlaw_fct, ordered = TRUE),
           emlaw_min_cond = factor(emlaw_cond, levels = unique(lookup$emlaw$emlaw_cond), ordered = TRUE)) %>%
    mutate(cowcode = countrycode(country_name, "country.name", "cown",
                                 custom_match = c("Serbia" = 345,
                                                  "Hong Kong" = 997)),
           iso3 = countrycode(country_name, "country.name", "iso3c"))

  return(pandem_clean)
}

create_pandem_single <- function(pandem) {
  pandem %>%
    filter(Quarter == "Q4")
}

load_clean_derogations <- function(path) {
  derogations_raw <- read_csv(path, col_types = cols())

  derogations_clean <- derogations_raw %>%
    rename(ratified = `Did they ratify/are they a member? (1=Yes, 0=No, 99= Not possible)`,
           derogate = `Did they officially derogate?`,
           derogation_start = `Derogation start date`,
           derogation_end = `Derogation end date`,
           country_name = Country) %>%
    mutate(country_name = recode(country_name, "Columbia" = "Colombia")) %>%
    mutate(cowcode = countrycode(country_name, "country.name", "cown",
                                 custom_match = c("Serbia" = 345,
                                                  "State of Palestine" = 998,
                                                  "Cook Islands" = NA,
                                                  "Niue" = NA)),
           iso3 = countrycode(country_name, "country.name", "iso3c"))

  return(derogations_clean)
}

load_clean_vdem <- function(path) {
  vdem_raw <- read_rds(path) %>% as_tibble()

  vdem_clean <- vdem_raw %>%
    filter(year > 2015) %>%
    rename(cowcode = COWcode) %>%
    mutate(cowcode = case_when(
      country_name == "Hong Kong" ~ 997,
      country_name == "Palestine/West Bank" ~ 998,
      TRUE ~ cowcode
    )) %>%
    mutate(iso3c = countrycode(country_name, "country.name", "iso3c",
                               custom_match = c("Kosovo" = "XKK",
                                                "Somaliland" = "XSO",
                                                "Zanzibar" = "EAZ"))) %>%
    select(country_name, year, cowcode, iso3c,
           # Civil society stuff
           v2cseeorgs,  # CSO entry and exit
           v2csreprss,  # CSO repression
           v2cscnsult,  # CSO consultation
           v2csprtcpt,  # CSO participatory environment
           v2csgender,  # CSO women's participation
           v2csantimv,  # CSO anti-system movements
           v2xcs_ccsi,  # Core civil society index (entry/exit, repression, participatory env)
           # Human rights and politics
           # Political corruption index (less to more, 0-1) (public sector +
           # executive + legislative + judicial corruption)
           v2x_corr,
           # Rule of law index
           v2x_rule,
           # Rights indexes
           v2x_civlib,  # Civil liberties index
           v2x_clphy,  # Physical violence index
           v2x_clpriv,  # Private civil liberties index
           v2x_clpol,  # Political civil liberties index
           # Democracy
           v2x_polyarchy
    )

  return(vdem_clean)
}

# Civicus Monitor
# We downloaded the standalone embeddable widget
# (https://monitor.civicus.org/widgets/world/) as an HTML file with
# `wget https://monitor.civicus.org/widgets/world/` and saved it as index_2021-03-19.html
#
# We then extracted the COUNTRIES_DATA variable embedded in a <script> tag
# (xpath = /html/body/script[5]), which is JSON-ish, but not quite. jsonlite
# can't parse it for whatever reason, but some online JSON formatter and
# validator could, so we ran it through that and saved the resulting clean file
load_clean_civicus <- function(path, lookup) {
  civicus_raw <- read_json(path) %>% as_tibble() %>% slice(1)

  civicus_clean <- civicus_raw %>%
    pivot_longer(everything(), names_to = "name", values_to = "value") %>%
    mutate(value = map_chr(value, ~.)) %>%
    mutate(value = parse_number(value, na = c("", "NA", "None"))) %>%
    mutate(country_name = countrycode(name, "iso3c", "country.name",
                                      custom_match = c("KOSOVO" = "XKK",
                                                       "SVT" = "VCT")),
           iso3c = countrycode(country_name, "country.name", "iso3c",
                               custom_match = c("XKK" = "Kosovo",
                                                "VCT" = "Saint Vincent and the Grenadines"))) %>%
    left_join(lookup$civicus, by = "value") %>%
    select(-name, -value, -country_name)

  return(civicus_clean)
}

create_pandem_derog <- function(derogations, pandem, vdem, lookups) {
  pandem_derog <- derogations %>%
    left_join(pandem, by = c("country_name", "cowcode", "iso3")) %>%
    left_join(filter(vdem, year == 2019), by = c("country_name", "cowcode")) %>%
    filter(!is.na(X1)) %>%
    mutate(has_derogation_end = case_when(
      is.na(derogation_end) ~ FALSE,
      str_detect(derogation_end, "N/A") ~ FALSE,
      TRUE ~ TRUE
    )) %>%
    mutate(has_emergency_end = emlimit == 1) %>%
    mutate(nonproportional = Type1 > 1 | Type2 == 1 | Type3 > 1) %>%
    mutate(type = case_when(
      derogate == 1 & has_derogation_end & !nonproportional ~ "A",
      derogate == 1 & (!has_derogation_end | nonproportional) ~ "B",
      derogate == 0 & ratified == 1 & emlaw < 5 ~ "C",
      derogate == 0 & ratified == 1 & emlaw >= 5 ~ "D",
      TRUE ~ "E"
    )) %>%
    left_join(lookups$type, by = "type")

  return(pandem_derog)
}

load_world_map <- function(path) {
  world_map <- read_sf(path) %>%
    filter(ISO_A3 != "ATA")

  return(world_map)
}

create_civicus_map_data <- function(civicus, map) {
  map_with_civicus <- map %>%
    # Fix some Natural Earth ISO weirdness
    mutate(ISO_A3 = ifelse(ISO_A3 == "-99", as.character(ISO_A3_EH), as.character(ISO_A3))) %>%
    mutate(ISO_A3 = case_when(
      .$ISO_A3 == "GRL" ~ "DNK",
      .$NAME == "Norway" ~ "NOR",
      .$NAME == "Kosovo" ~ "XKK",
      TRUE ~ ISO_A3
    )) %>%
    left_join(civicus, by = c("ISO_A3" = "iso3c"))

  return(map_with_civicus)
}
