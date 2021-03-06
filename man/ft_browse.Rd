% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ft_browse.R
\name{ft_browse}
\alias{ft_browse}
\alias{ft_browse_sections}
\title{Browse an article in your default browser}
\usage{
ft_browse(x, what = "macrodocs", browse = TRUE)

ft_browse_sections(x, what = "abstract", output = NULL, browse = TRUE)
}
\arguments{
\item{x}{An object of class \code{ft_data} - the output from a call to
\code{\link[=ft_get]{ft_get()}}}

\item{what}{(character) One of macrodocs (default), publisher, or whisker.}

\item{browse}{(logical) Whether to browse (default) or not. If \code{FALSE},
return the url.}

\item{output}{A file path, if not given, uses a temporary file, deleted up on leaving the
R session.}
}
\description{
Browse an article in your default browser
}
\details{
\code{what=whisker} not operational yet. When operational, will use whisker to open
html page from XML content, each section parsed into separate section.
}
\examples{
\dontrun{
x <- ft_get('10.7554/eLife.04300', from='elife')
ft_browse(x)
ft_browse(x, browse=FALSE)

ft_browse( ft_get('10.3389/fphar.2014.00109', from="entrez") )

# open to publisher site
ft_browse(x, "publisher")
}
}
