#' Play the PMID lottery
#'
#' @param lotto_numbers An integer vector
#' @param subject A string
#'
#' @import rentrez
#' @import XML
#'
#' @return NULL
#'
#' @export
#'
#' @examples
#' lottery(38863995)
#' lottery(c(38863995, 38864247, 38862712, 38862494))
#'
lottery <- function(lotto_numbers, subject = "genomics") {
    # Select a PMID based on the date
    PMID_today <- get_PMID(subject)

    # Fetch the PubMed record for the winning PMID
    record_xml <- entrez_fetch(db = "pubmed", id = PMID_today, rettype = "xml")
    record <- XML::xmlParse(record_xml)

    # Extract title and author list
    title <- XML::xpathSApply(record, "//ArticleTitle", xmlValue)
    authors <- XML::xpathSApply(record, "//AuthorList/Author", function(x) {
        lastName <- XML::xpathSApply(x, "./LastName", xmlValue)
        initials <- XML::xpathSApply(x, "./Initials", xmlValue)
        paste(lastName, initials)
        })

    author_list <- paste(authors, collapse = ", ")

    # Set payout
    set.seed(as.integer(gsub("-", "", Sys.Date())))
    payout <- sample(1e+5:1e+10, 1) / length(lotto_numbers)

    # Check if the generated PMID is in the input vector
    if (PMID_today %in% lotto_numbers) {
        cat(paste0("Congratulations! You have won the lottery! \n",
                   "You've won: $", payout))
    } else {
        cat("Sorry, better luck next time. \n")
    }

    cat(
      paste0("\n", "Check out today's paper in ", subject, "!", "\n",
             "Title: ", title, "\n",
             "Authors: ", author_list, "\n",
             "PMID: ", PMID_today)

      )
}
