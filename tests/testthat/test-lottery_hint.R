test_that("hint returns a string", {
  hint <- lottery_hint()
  expect_type(hint, "character")
})
