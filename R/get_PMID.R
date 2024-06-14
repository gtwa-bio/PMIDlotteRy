#' Choose today's PMID
#'
#' @param subject a string for lotto category
#'
#' @return PMID for today
#' @import rentrez
#' @import lubridate
#' @export
#'
#' @examples
#' get_PMID()
#' get_PMID("neurobiology")
get_PMID <- function(subject = "genomics") {
    # Calculate yesterday's date
    yesterday <- Sys.Date() - 1

    # Calculate the date 20 years ago from yesterday
    twenty_years_ago <- format(yesterday - years(20), "%Y/%m/%d")

    # Format yesterday's date
    yesterday_formatted <- format(yesterday, "%Y/%m/%d")

    # Construct the search term with the date range
    subject_with_date_range <- sprintf("%s AND (%s:%s[Date - Publication])",
                                    subject,
                                    twenty_years_ago,
                                    yesterday_formatted)

    # Perform the search with the restricted date range
    search_results <- rentrez::entrez_search(db = "pubmed",
                                            term = subject_with_date_range,
                                            retmax = 500)

    # Select a random PMID from the search results
    set.seed(as.integer(gsub("-", "", Sys.Date())))
    PMID <- sample(search_results$ids, 1)

    return(as.numeric(PMID))
}
