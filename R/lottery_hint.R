#' Hint for today's numbers
#'
#' @return A hint for today's possible PMID range
#' @export
#'
#' @examples
#' lottery_hint()
lottery_hint <- function(){
  # Search for the last 100 articles published related to genetics
  search_results <- rentrez::entrez_search(db = "pubmed", term = "genetics", retmax = 100)
  PMID_floor <- floor(as.numeric(min(search_results$ids)) / 10) * 10
  PMID_ceiling <- ceiling(as.numeric(max(search_results$ids)) / 10) * 10


  print(paste0("Today's PMIDs range: ", PMID_floor, "-", PMID_ceiling))
}
