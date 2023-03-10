% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extraction.R
\name{get_sex}
\alias{get_sex}
\title{Return dataframe containing sex of specified subjects}
\usage{
get_sex(abcd_df, subjects = NULL, t = t, format = "dummied")
}
\arguments{
\item{abcd_df}{Any ABCD dataframe containing sex}

\item{subjects}{Dataframe containing list of required subjects}

\item{t}{timepoint for data collection (0: baseline, 1: 1yfu, ... 3: 3yfu)}

\item{format}{String indicating format to output sex data.

\if{html}{\out{<div class="sourceCode">}}\preformatted{* `"dummied"` single binary column `M`. This is the default.
* `"undummied"` single column `sex` containing factor values `M` and `F`.
}\if{html}{\out{</div>}}}
}
\value{
sex Dataframe containing sex
}
\description{
Return dataframe containing sex of specified subjects
}
