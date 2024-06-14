#' Choose today's PMID
#'
#' @return PMID for today
#' @importFrom rentrez entrez_search
#' @export
#'
#' @examples
#' get_PMID()
get_PMID <- function(subject = "genomics") {
    # Search for the last 100 articles published related to genetics
    search_results <- rentrez::entrez_search(db = "pubmed", term = subject, retmax = 100)

    # Select a random PMID from the search results
    set.seed(as.integer(gsub("-", "", Sys.Date())))
    PMID <- sample(search_results$ids, 1)

    return(as.numeric(PMID))
}
