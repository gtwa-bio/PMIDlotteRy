#' Title
#'
#' @return PMID for today
#' @export
#'
#' @examples
#' get_PMID
get_PMID <- function() {
    if (!require(rentrez)) {
        install.packages("rentrez")
    }
    # Search for the last 100 articles published related to genetics
    search_results <- rentrez::entrez_search(db = "pubmed", term = "genetics", retmax = 100)

    # Select a random PMID from the search results
    set.seed(as.integer(gsub("-", "", Sys.Date())))
    PMID <- sample(search_results$ids, 1)

    return(as.numeric(PMID))
}
