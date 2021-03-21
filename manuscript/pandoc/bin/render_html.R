#!/usr/bin/env Rscript

args <- R.utils::cmdArgs()

# Check arguments
stopifnot("Specify an input file using -input\n(e.g. `-input manuscript.Rmd`)" = is.character(args$input),
          "Specify an output file using -output\n(e.g. `-output manuscript.html`)" = is.character(args$output),
          "Specify a CSL file using -csl\n(e.g. `-csl pandoc/csl/apa.csl`)" = is.character(args$csl))

# Knit
rmarkdown::render(
  input = args$input,
  output_file = args$output,
  bookdown::html_document2(
    template = "pandoc/templates/html.html",
    css = "pandoc/templates/ath-clean.css",
    pandoc_args = c("--metadata", "link-citations=true",
                    "--metadata", "linkReferences=true",
                    paste0("--csl=", args$csl)),
    md_extensions = "+raw_tex+smart-autolink_bare_uris+ascii_identifiers",
    toc = TRUE,
    number_sections = FALSE,
    self_contained = FALSE,
    standalone = FALSE,
    theme = NULL
  )
)
