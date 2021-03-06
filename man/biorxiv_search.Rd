% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bio_utils.R
\name{biorxiv_search}
\alias{biorxiv_search}
\title{Biorxiv search}
\usage{
biorxiv_search(query, limit = 10, date_from = NULL, date_to = NULL, ...)
}
\arguments{
\item{query}{query terms}

\item{limit}{records to return. default: 10}

\item{date_from, date_to}{date begin and end, of form YYYY-MM-DD}

\item{...}{curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\description{
Biorxiv search
}
\details{
We search Biorxiv first, get DOIs, then search Crossref -
one consequence of this is that you may get back less than the number of
results you requested even if Biorxiv found equal to or more than
the amount you requested - BECAUSE we take the DOIs from the results and
go out to Crossref to get what we think is better metadata than what
Biorxiv has.
}
\examples{
\dontrun{
biorxiv_search(query = "owls")
biorxiv_search(query = "owls", date_from = "2016-01-01", 
  date_to = "2016-12-30", limit = 10)
}
}
\keyword{internal}
