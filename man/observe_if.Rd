% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/observe.R
\name{observe_if}
\alias{observe}
\alias{observe.default}
\alias{observe_if}
\alias{observe_if_}
\alias{observe_if_.data.frame}
\alias{observe_if_.grouped_df}
\alias{observe_if_.tbl_df}
\title{Observe your data}
\usage{
observe_if(.data, ..., .append = TRUE)

observe_if_(.data, ..., .dots, .append = TRUE)

\method{observe_if_}{data.frame}(.data, ..., .dots, .append = TRUE)

\method{observe_if_}{tbl_df}(.data, ..., .dots, .append = TRUE)

\method{observe_if_}{grouped_df}(.data, ..., .dots, .append = TRUE)

observe(.data, ...)

\method{observe}{default}(.data, ...)
}
\arguments{
\item{.data}{A tbl or data.frame.}

\item{...}{Logical predicates. 
Multiple conditions are considered as separate observations.}

\item{.append}{logical. If \code{TRUE} (the default), the \code{observations} 
attribute, in case it already exists before the call, is appended; 
if \code{FALSE} it is updated.}

\item{.dots}{Used to work around non-standard evaluation.}
}
\value{
\code{.data} is returned together with an \code{observations} attribute.
This attribute is a data frame (actually a \code{\link[tibble]{tibble}}) 
which contains all check runs.
}
\description{
\code{observe_if} identifies rows of \code{.data} where the predicates 
tested fail.
}
\examples{
library(magrittr)

df <- data.frame(x = 1:3, y = 2:4)
df \%>\% 
  observe_if(y-x==1) \%>\% 
  observe_if(x < 3) \%>\% 
  observe_if(y < 4, x > 1) \%>\% 
  obs()

}

