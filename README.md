
<!-- README.md is generated from README.Rmd. Please edit that file -->

# abcdutils

<!-- badges: start -->

<!-- badges: end -->

A collection of utility functions for working with the Adolescent Brain
and Cognitive Development dataset.

## Installation

You can install the development version of abcdutils from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("psvelayudhan/abcdutils")
```

## Usage

### Accessing the data dictionary

``` r
library(abcdutils)

# Search the NDA's data dictionary from R
search_dd("traumatic brain injury")

# Go to the data dictionary page of a dataframe based on its short name
abcd_dd("abcd_otbi01")
```

### Extract cleaned dataframes

Subcortical volumes (structural MRI)

``` r
subc_v <- get_subc_v(smrip10201)
```

Subcortical volumes for a predefined set of subjects and a specific
collection event

``` r
# Dataframe containing "subjectkey" column
subject_df <- read_csv("subjectlist.csv")

subc_v <- get_subc_v(smrip10201, subjects = subject_df, t = 0)
```

(where `t = 0` refers to baseline data)

Extraction available for a wide range of variables related to
neuroimaging, demographics, psychosocial resilience, and medical
history.

### Concussion data prep

Additional focus on concussion data preparation.

``` r
abcd_otbi01 <- read_csv("abcd_otbi01.txt")
```

Variety of useful processing for the TBI dataframe, including:

Renaming columns to be easily interpretable:

``` r
renamte_tbi(abcd_otbi01)
```

Identify which subjects had an mTBI and which had a moderate+ head
injury:

``` r
identify_all_tbi(abcd_otbi01)
```

Identify which head injuries were mTBIs:

``` r
identify_mtbi(abcd_otbi01)
```

And others:

``` r
# When did the mTBIs occur
identify_mtbi_times(abcd_otbi01)

# What mechanism caused their latest mTBI
identify_latest_mtbi_mechanism(abcd_otbi01)

# How many mTBIs did the subject experience
identify_num_mtbi(abcd_otbi01)

# How much LOC occurred for the subject's most recent injury
identify_latest_mtbi_loc(abcd_otbi01)

# Did memory loss / feeling dazed or confused occur on the most recent injury
identify_latest_mtbi_mem_daze(abcd_otbi01)
```

The functions above are all combined to one mTBI detailing function:

``` r
detail_mtbi(abcd_otbi01)
```