test_that("get_PMID function returns number", {
    # sample PMID
    PMID <- get_PMID()

    # Check that the result is a number
    expect_type(PMID, "double")
})

test_that("get_PMID function returns the same number each time", {
  # sample PMID twice
  PMID_1 <- get_PMID()
  PMID_2 <- get_PMID()

  # Check that the result is a number
  expect_equal(PMID_1,PMID_2)
})
