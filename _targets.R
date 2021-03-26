library(targets)
library(tarchetypes)

source("R/funs_data-cleaning.R")
source("R/funs_knitting.R")

options(tidyverse.quiet = TRUE)

future::plan(future::multisession)

tar_option_set(packages = c("tidyverse", "countrycode", "jsonlite", "here", "scales", "sf"))

# General variables
csl <- "pandoc/csl/apa.csl"
bibstyle <- "bibstyle-chicago-authordate"

list(
  # Define raw data files
  tar_target(pandem_raw_file,
             here("data", "raw_data", "pandem", "csv_files", "PanDem_ts_V5.csv"),
             format = "file"),
  tar_target(derog_raw_file,
             here("data", "raw_data", "derogations", "Pandemic backsliding - Sheet1.csv"),
             format = "file"),
  tar_target(vdem_raw_file,
             here("data", "raw_data", "Country_Year_V-Dem_Full+others_R_v10",
                  "V-Dem-CY-Full+Others-v10.rds"),
             format = "file"),
  tar_target(civicus_raw_file,
             here("data", "raw_data", "Civicus", "civicus_2021-03-19.json"),
             format = "file"),
  tar_target(naturalearth_raw_file,
             here("data", "raw_data", "ne_110m_admin_0_countries",
                  "ne_110m_admin_0_countries.shp"),
             format = "file"),
  # Define helper functions
  tar_target(plot_funs, here("lib", "graphics.R"), format = "file"),
  # Load and clean data
  tar_target(lookups, create_lookups()),
  tar_target(pandem_clean, load_clean_pandem(pandem_raw_file, lookups)),
  tar_target(pandem_single, create_pandem_single(pandem_clean)),
  tar_target(derogations_clean, load_clean_derogations(derog_raw_file)),
  tar_target(vdem_clean, load_clean_vdem(vdem_raw_file)),
  tar_target(civicus_clean, load_clean_civicus(civicus_raw_file, lookups)),
  tar_target(pandem_derog, create_pandem_derog(derogations_clean, pandem_single, vdem_clean, lookups)),
  tar_target(world_map, load_world_map(naturalearth_raw_file)),
  tar_target(civicus_map_data, create_civicus_map_data(civicus_clean, world_map)),

  # tarchetypes::tar_render() automatically detects target dependencies in Rmd
  # files and knits them, but there's no easy way to pass a custom rendering
  # script like bookdown::html_document2(), so two things happen here:
  #   1. Set a file-based target with tar_target_raw() and use tar_knitr_deps()
  #      to detect the target dependencies in the Rmd file
  #   2. Use a bunch of other file-based targets to actually render the document
  #      through different custom functions
  tar_target_raw("main_manuscript", "manuscript/manuscript.Rmd",
                 format = "file",
                 deps = tar_knitr_deps("manuscript/manuscript.Rmd")),
  tar_target(rendered_html,
             render_html(
               input = main_manuscript,
               output = "output/manuscript.html",
               csl = csl),
             format = "file"),
  tar_target(rendered_pdf,
             render_pdf(
               input = main_manuscript,
               output = "output/manuscript.pdf",
               bibstyle = bibstyle),
             format = "file"),
  tar_target(rendered_mspdf,
             render_pdf_ms(
               input = main_manuscript,
               output = "output/manuscript-ms.pdf",
               bibstyle = bibstyle),
             format = "file"),
  tar_target(rendered_docx,
             render_docx(
               input = main_manuscript,
               output = "output/manuscript.docx",
               csl = csl),
             format = "file")
)
#
# list(
#   tar_target(
#     raw_data_file,
#     "data/raw_data.csv",
#     format = "file"
#   ),
#   tar_target(
#     raw_data,
#     read_csv(raw_data_file, col_types = cols())
#   ),
#   tar_target(
#     data,
#     raw_data %>%
#       mutate(Ozone = replace_na(Ozone, mean(Ozone, na.rm = TRUE)))
#   ),
#   tar_target(hist, create_plot(data)),
#   tar_target(fit, biglm(Ozone ~ Wind + Temp, data)),
#   tar_render(report, "index.Rmd")
# )
