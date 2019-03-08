SelectFolderThatExists <- function(folders, name) {
  retval <- NA
  for (i in folders) {
    if (dir.exists(i)) {
      retval <- i
      break
    }
  }

  # if multiple folders are provided, then they *must* exist
  if (is.na(retval) & length(folders) > 1) {
    stop(sprintf("Multiple folders provided to %s, but none exist", name))
  } else if (is.na(retval) & length(folders) == 1) retval <- folders

  return(retval)
}

#' Allows for InitialiseProject to create folders and
#' delete empty folders on your computer
#' @export AllowFileManipulationFromInitialiseProject
AllowFileManipulationFromInitialiseProject <- function() {
  CONFIG$ALLOW_FILE_MANIPULATION_FROM_INITIALISE_PROJECT <- TRUE
}

#' Initialises project
#'
#' `org::InitialiseProject` takes in 2+ arguments.
#' It then saves its results (i.e. folder locations) in `org::PROJ`,
#' which you will use in all of your subsequent code.
#'
#' You need to run 'org::AllowFileManipulationFromInitialiseProject()'
#' for this function to create today's folder (org::PROJ$SHARED_TODAY).
#'
#' For more details see the help vignette:
#' \code{vignette("intro", package = "org")}
#' @param HOME The folder containing 'Run.R' and 'code/'
#' @param SHARED A folder inside `SHARED` with today's date will be created and it will be accessible via `org::PROJ$SHARED_TODAY` (this is where you will store all of your results)
#' @param ... Other folders that you would like to reference
#' @examples
#' \dontrun{
#' org::AllowFileManipulationFromInitialiseProject()
#' org::InitialiseProject(
#'   HOME = "/git/analyses/2019/analysis3/",
#'   SHARED = "/dropbox/analyses_results/2019/analysis3/",
#'   RAW = "/data/analyses/2019/analysis3/"
#' )
#' org::PROJ$SHARED_TODAY
#' org::PROJ$RAW
#' }
#' @export
InitialiseProject <- function(HOME = NULL,
                              SHARED = NULL,
                              ...) {
  PROJ$HOME <- HOME
  PROJ$SHARED <- SHARED

  today <- format.Date(Sys.time(), "%Y-%m-%d")

  arguments <- list(...)
  for (i in seq_along(arguments)) {
    PROJ[[names(arguments)[i]]] <- arguments[[i]]
  }

  # If multiple files were provided, then select the folder that exists
  for (i in names(PROJ)) {
    if (!is.null(PROJ[[i]])) PROJ[[i]] <- SelectFolderThatExists(PROJ[[i]], i)
  }

  # Add SHARED_TODAY to PROJ
  if (is.null(PROJ$SHARED)) {
    PROJ$SHARED_TODAY <- NULL
  } else {
    PROJ$SHARED_TODAY <- file.path(PROJ$SHARED, today)
  }

  if (!CONFIG$ALLOW_FILE_MANIPULATION_FROM_INITIALISE_PROJECT) {
    warning("You need to run 'org::AllowFileManipulationFromInitialiseProject()' for this function to create today's folder (org::PROJ$SHARED_TODAY)")
  } else {
    for (i in names(PROJ)) {
      if (!is.null(PROJ[[i]])) if (!dir.exists(PROJ[[i]])) dir.create(PROJ[[i]], recursive = TRUE)
    }

    # Delete empty folders in shared folder
    if (!is.null(PROJ$SHARED)) {
      for (f in list.files(PROJ$SHARED)) {
        if (grepl("[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]", f)) if (f == today) next # don't want to delete today's folder
        f2 <- file.path(PROJ$SHARED, f)
        if (file.exists(f2) && !dir.exists(f2)) next # dont delete files
        if (length(list.files(f2)) == 0) {
          unlink(f2, recursive = T)
        }
      }
    }

    if (!is.null(PROJ$HOME)) if (!dir.exists(file.path(PROJ$HOME, "code"))) dir.create(file.path(PROJ$HOME, "code"))
  }

  if (!is.null(PROJ$HOME)) {
    setwd(PROJ$HOME)

    fileSources <- file.path("code", list.files("code", pattern = "*.[rR]$"))
    sapply(fileSources, source, .GlobalEnv)
  }
}
