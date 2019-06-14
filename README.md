# fhiplot

This repo contains the functions of the `fhiplot` package, which once installed locally, provides helpful functions for creating and exporting graphics made in ggplot in the style used by the Norwegian Institute of Public Health.

# Installation

You should include Folkehelseinstituttet's drat repository as a default option for your computer. You can do this by installing the package `usethis` and then running the command:

```
usethis::edit_r_profile()
```

This will open a document called `.Rprofile`. Inside this document you will enter:

```
options(
  repos = c(
    folkehelseinstituttet = "https://folkehelseinstituttet.github.io/drat/",
    CRAN = "https://cran.rstudio.com/"
  )
)
```

You will then restart RStudio and you can install all FHI packages in the normal manner:

```
install.package("fhiplot")
```
