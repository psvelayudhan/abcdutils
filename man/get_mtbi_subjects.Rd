% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tbi.R
\name{get_mtbi_subjects}
\alias{get_mtbi_subjects}
\title{Extract mTBI subjects with a minimum time-since-last-mtbi threshold}
\usage{
get_mtbi_subjects(abcd_otbi01, min_latest_mtbi_mpi, t = NULL)
}
\arguments{
\item{abcd_otbi01}{A TBI dataframe}

\item{min_latest_mtbi_mpi}{The minimum time-since-last-mtbi to be selected}

\item{t}{Integer representing which timepoint to filter to:
\itemize{
\item 0: baseline
\item 1: 1-year follow-up
\item 2: 2-year follow-up
\item 3: 3-year follow-up
}}
}
\value{
subjects Dataframe containing list of required subjects
}
\description{
Extract mTBI subjects with a minimum time-since-last-mtbi threshold
}
