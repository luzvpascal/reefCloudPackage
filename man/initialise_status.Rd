% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/initialise_status.R
\name{initialise_status}
\alias{initialise_status}
\title{initialise_status}
\usage{
initialise_status()
}
\value{
returned arguments description
}
\description{
The following function provides a list used to report run status
and progress. The list itself comprises\cr
 - top level items represent the major status items that form status categories\cr
 - within each list there are four items:\cr
    - title:  a title to use in the status\cr
    - items:  a vector of object names\cr
    - labels: a vector of human readable labels to associate with objects\cr
    - status: the status of the item (determines symbol)\cr
}
\examples{
examples
}
