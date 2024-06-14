#' Play the PMID lottery
#'
#' @param lotto_numbers a integer vector of PMID guesses
#' @param subject a string for lotto category
#' 
#' @importFrom rentrez entrez_fetch
#' @importFrom XML xpathSApply
#' @importFrom XML xmlParse
#' 
#' @return Whether or not numbers match today's PMID, and information on the paper
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

    # Extract title and abstract
    title <- XML::xpathSApply(record, "//ArticleTitle", xmlValue)
    abstract <- XML::xpathSApply(record, "//AbstractText", xmlValue)

    # Set payout
    set.seed(as.integer(gsub("-", "", Sys.Date())))
    payout <- sample(1e+5:1e+10, 1) / length(lotto_numbers)

    # Check if the generated PMID is in the input vector
    if (PMID_today %in% lotto_numbers) {
        print("Congratulations! You have won the lottery!")
        print(paste0( "You've won: $", payout))
    } else {
        print("Sorry, better luck next time.")
    }

    print((paste0("Check out today's paper in ", subject, "!")))
    print(paste0("Title: ", title))
    print(paste0("Abstract: ", abstract))
}
