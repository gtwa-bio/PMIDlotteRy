
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PMIDlotteRy

<!-- badges: start -->

[![GitHub
issues](https://img.shields.io/github/issues/gtwa-bio/PMIDlotteRy)](https://github.com/gtwa-bio/PMIDlotteRy/issues)
[![GitHub
pulls](https://img.shields.io/github/issues-pr/gtwa-bio/PMIDlotteRy)](https://github.com/gtwa-bio/PMIDlotteRy/pulls)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Codecov test
coverage](https://codecov.io/gh/gtwa-bio/PMIDlotteRy/branch/devel/graph/badge.svg)](https://app.codecov.io/gh/gtwa-bio/PMIDlotteRy?branch=devel)
<!-- [![Bioc release status](http://www.bioconductor.org/shields/build/release/bioc/PMIDlotteRy.svg)](https://bioconductor.org/checkResults/release/bioc-LATEST/PMIDlotteRy) -->
<!-- [![Bioc devel status](http://www.bioconductor.org/shields/build/devel/bioc/PMIDlotteRy.svg)](https://bioconductor.org/checkResults/devel/bioc-LATEST/PMIDlotteRy) -->
<!-- [![Bioc downloads rank](https://bioconductor.org/shields/downloads/release/PMIDlotteRy.svg)](http://bioconductor.org/packages/stats/bioc/PMIDlotteRy/) -->
<!-- [![Bioc support](https://bioconductor.org/shields/posts/PMIDlotteRy.svg)](https://support.bioconductor.org/tag/PMIDlotteRy) -->
<!-- [![Bioc history](https://bioconductor.org/shields/years-in-bioc/PMIDlotteRy.svg)](https://bioconductor.org/packages/release/bioc/html/PMIDlotteRy.html#since) -->
<!-- [![Bioc last commit](https://bioconductor.org/shields/lastcommit/devel/bioc/PMIDlotteRy.svg)](http://bioconductor.org/checkResults/devel/bioc-LATEST/PMIDlotteRy/) -->
<!-- [![Bioc dependencies](https://bioconductor.org/shields/dependencies/release/PMIDlotteRy.svg)](https://bioconductor.org/packages/release/bioc/html/PMIDlotteRy.html#since) -->
<!-- [![check-bioc](https://github.com/gtwa-bio/PMIDlotteRy/actions/workflows/check-bioc.yml/badge.svg)](https://github.com/gtwa-bio/PMIDlotteRy/actions/workflows/check-bioc.yml) -->
<!-- badges: end -->

The goal of `PMIDlotteRy` is to have fun! It’s a toy for playing the
lottery with PMID numbers. A new number is picked each day, have fun
guessing!

## Installation instructions

Get the latest stable `R` release from
[CRAN](http://cran.r-project.org/). Then install `PMIDlotteRy` from
[GitHub](https://github.com/gtwa-bio/PMIDlotteRy) with:

``` r
devtools::install_github("gtwa-bio/PMIDlotteRy")
```

## Example

This is a basic example which shows you how to play the game:

``` r
## load the package
library("PMIDlotteRy")

## Pick your lottery numbers
lotto_numbers <- c(38863995, 38864247, 38862711, 38862494)

## Play!
lottery(lotto_numbers)
#> Sorry, better luck next time. 
#> 
#> Check out today's paper in genomics!
#> Title: Investigating demic versus cultural diffusion and sex bias in the spread of Austronesian languages in Vietnam.
#> Authors: Thao DH, Dinh TH, Mitsunaga S, Duy D, Phuong NT, Anh NP, Anh NT, Duc BM, Hue HTT, Ha NH, Ton ND, Hübner A, Pakendorf B, Stoneking M, Inoue I, Duong NT, Hai NV
#> PMID: 38885215
```

## Code of Conduct

Please note that the `PMIDlotteRy` project is released with a
[Contributor Code of
Conduct](http://bioconductor.org/about/code-of-conduct/). By
contributing to this project, you agree to abide by its terms.

## Development tools

- Continuous code testing is possible thanks to [GitHub
  actions](https://www.tidyverse.org/blog/2020/04/usethis-1-6-0/)
  through *[usethis](https://CRAN.R-project.org/package=usethis)*,
  *[remotes](https://CRAN.R-project.org/package=remotes)*, and
  *[rcmdcheck](https://CRAN.R-project.org/package=rcmdcheck)* customized
  to use [Bioconductor’s docker
  containers](https://www.bioconductor.org/help/docker/) and
  *[BiocCheck](https://bioconductor.org/packages/3.19/BiocCheck)*.
- Code coverage assessment is possible thanks to
  [codecov](https://codecov.io/gh) and
  *[covr](https://CRAN.R-project.org/package=covr)*.
- The [documentation website](http://gtwa-bio.github.io/PMIDlotteRy) is
  automatically updated thanks to
  *[pkgdown](https://CRAN.R-project.org/package=pkgdown)*.
- The code is styled automatically thanks to
  *[styler](https://CRAN.R-project.org/package=styler)*.
- The documentation is formatted thanks to
  *[devtools](https://CRAN.R-project.org/package=devtools)* and
  *[roxygen2](https://CRAN.R-project.org/package=roxygen2)*.

For more details, check the `dev` directory.

This package was developed using
*[biocthis](https://bioconductor.org/packages/3.19/biocthis)*.

## Acknowledgements

Please note that the `PMIDlotteRy` was only made possible thanks to many
other R and bioinformatics software authors, which are cited either in
the vignettes and/or the paper(s) describing this package.
