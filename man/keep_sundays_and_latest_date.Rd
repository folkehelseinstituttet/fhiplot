% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/time_conversion.R
\name{keep_sundays_and_latest_date}
\alias{keep_sundays_and_latest_date}
\title{Keeps sundays and latest date
If you provide a vector of dates, this function will keep the sundays
and the latest date}
\usage{
keep_sundays_and_latest_date(
  dates,
  format = "Uke isoweek_c-1/isoweek_c",
  keep_delete = TRUE
)
}
\arguments{
\item{dates}{Vector of dates}

\item{format}{Choose between: "isoyearweek_c", "Uke isoweek_c", "isoyearweek_c-1/isoyearweek_c", "Uke isoweek_c-1/isoweek_c", "date"}

\item{keep_delete}{Keep everything in the same format as provided}
}
\description{
Keeps sundays and latest date
If you provide a vector of dates, this function will keep the sundays
and the latest date
}
\examples{
fhiplot::keep_sundays_and_latest_date(
  dates = seq.Date(as.Date("2020-01-01"), as.Date("2020-02-01"), by=1),
  format = "isoyearweek_c",
  keep_delete = TRUE
)

fhiplot::keep_sundays_and_latest_date(
  dates = seq.Date(as.Date("2020-01-01"), as.Date("2020-02-01"), by=1),
  format = "Uke isoweek_c",
  keep_delete = TRUE
)

fhiplot::keep_sundays_and_latest_date(
  dates = seq.Date(as.Date("2020-01-01"), as.Date("2020-02-01"), by=1),
  format = "isoyearweek_c-1/isoyearweek_c",
  keep_delete = TRUE
)

fhiplot::keep_sundays_and_latest_date(
  dates = seq.Date(as.Date("2020-01-01"), as.Date("2020-02-01"), by=1),
  format = "Uke isoweek_c-1/isoweek_c",
  keep_delete = TRUE
)

fhiplot::keep_sundays_and_latest_date(
  dates = seq.Date(as.Date("2020-01-01"), as.Date("2020-02-01"), by=1),
  format = "date",
  keep_delete = TRUE
)

fhiplot::keep_sundays_and_latest_date(
  dates = seq.Date(as.Date("2020-01-01"), as.Date("2020-02-01"), by=1),
  format = "date",
  keep_delete = FALSE
)
}
