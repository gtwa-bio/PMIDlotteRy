test_that("lottery function works", {
    # Generate a vector of PMIDs
    PMIDs <- c(12345678, 23456789, 34567890)

    # Test the lottery function
    result <- lottery(PMIDs)

    # Check that the result is a character string
    expect_type(result, "character")

    # Check that the result is one of the expected messages
    expect_match(result, "Congratulations! You have won the lottery!|Sorry, better luck next time.")
})
