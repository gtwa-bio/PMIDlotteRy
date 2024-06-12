
<!-- README.md is generated from README.Rmd. Please edit that file -->

# PMIDlotteRy

<!-- badges: start -->

[![GitHub
issues](https://img.shields.io/github/issues/gtwa-bio/PMIDlotteRy)](https://github.com/gtwa-bio/PMIDlotteRy/issues)
[![GitHub
pulls](https://img.shields.io/github/issues-pr/gtwa-bio/PMIDlotteRy)](https://github.com/gtwa-bio/PMIDlotteRy/pulls)
<!-- badges: end -->

The goal of `PMIDlotteRy` is to …

## Installation instructions

Get the latest stable `R` release from
[CRAN](http://cran.r-project.org/). Then install `PMIDlotteRy` from
[GitHub](https://github.com/gtwa-bio/PMIDlotteRy) with:

``` r
BiocManager::install("gtwa-bio/PMIDlotteRy")
```

## Example

This is a basic example which shows you how to play the game:

``` r
## load the package
library("PMIDlotteRy")

## Pick your lottery numbers
lotto_numbers <- c(38863995, 38864247, 38862712, 38862494)

## Play!
lottery(lotto_numbers)
#> [1] "Congratulations! You have won the lottery!"
```

## Citation

Below is the citation output from using `citation('PMIDlotteRy')` in R.
Please run this yourself to check for any updates on how to cite
**PMIDlotteRy**.

``` r
print(citation('PMIDlotteRy'), bibtex = TRUE)
#> To cite package 'PMIDlotteRy' in publications use:
#> 
#>   Twa G (2020). _PMIDlotteRy: PMID Lottery_. R package version 0.99.0,
#>   <https://github.com/gtwa-bio/PMIDlotteRy>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {PMIDlotteRy: PMID Lottery},
#>     author = {Guy Twa},
#>     year = {2020},
#>     note = {R package version 0.99.0},
#>     url = {https://github.com/gtwa-bio/PMIDlotteRy},
#>   }
```

Please note that the `PMIDlotteRy` was only made possible thanks to many
other R and bioinformatics software authors, which are cited either in
the vignettes and/or the paper(s) describing this package.

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
