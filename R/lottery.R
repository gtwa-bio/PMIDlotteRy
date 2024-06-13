#' Title
#'
#' @param lotto_numbers a integer vector of PMID guesses
#'
#' @return Any guess matches today's PMID
#' @export
#'
#' @examples
#' lottery(38863995)
#' lottery(c(38863995, 38864247, 38862712, 38862494))
#'
lottery <- function(lotto_numbers) {
    # Select a PMID based on the date
    PMID_today <- get_PMID()

    # Check if the generated PMID is in the input vector
    if (PMID_today %in% lotto_numbers) {
        return("Congratulations! You have won the lottery!")
    } else {
        return("Sorry, better luck next time.")
    }
}
