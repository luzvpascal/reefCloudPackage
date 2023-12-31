% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assignSpatialDomain_tier.R
\name{assignSpatialDomain_tier}
\alias{assignSpatialDomain_tier}
\title{assignSpatialDomain_tier}
\usage{
assignSpatialDomain_tier(dat, tier, andNearest = TRUE)
}
\arguments{
\item{dat}{a dataframe containing at least the following:   LONGITUDE:  the Reef longitude - LATITUDE:   the Reef latitude}

\item{tier}{considered tier}
}
\value{
dataframe containing unit-level Tier classifications
}
\description{
the following functions determines which tier categories each spatial unit belongs to based on Latitude and Longitude
}
