.onAttach <- function(libname, pkgname) {
  .onAttach <- function(libname, pkgname) {
    packageStartupMessage(paste(
      "fhiplot",
      utils::packageDescription("fhiplot")$Version,
      "https://folkehelseinstituttet.github.io/fhiplot"
    ))
  }
}
