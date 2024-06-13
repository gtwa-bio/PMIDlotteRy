test_that("get_PMID function works", {
    # Test the get_PMID function
    PMID <- get_PMID()

    # Check that the result is a character string
    expect_type(PMID, "double")

    # Check that the PMID is a valid number
    expect_true(is.numeric(PMID))
    expect_true(!is.na(PMID))
})
