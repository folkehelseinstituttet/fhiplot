% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/htmltable_css.R
\name{htmltable_quick_style}
\alias{htmltable_quick_style}
\title{CSS for htmltable header}
\usage{
htmltable_quick_style(
  tab,
  widths = rep(round(100/ncol(tab)), ncol(tab)),
  css_style_matrix = NULL,
  n_cgroup = 1,
  font_size_cell = 14,
  font_size_header = 16
)
}
\arguments{
\item{tab}{tab}

\item{widths}{Vector}

\item{css_style_matrix}{matrix containing css styles of the same dimensions as tab}

\item{n_cgroup}{The number of cgroups that are in your table}

\item{font_size_cell}{font size cell}

\item{font_size_header}{font size header}
}
\description{
CSS for htmltable header
}
