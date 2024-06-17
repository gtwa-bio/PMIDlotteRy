test_that("Lottery function outputs correct message", {
  # Assuming 'lottery_function' is your function and 'PMID_today' is defined
  # Simulate a winning condition
  winning_output <- capture.output(lottery(get_PMID()))
  # Simulate a non-winning condition
  losing_output <- capture.output(lottery(123))

  # Check if the winning message is in the winning output
  expect_true("Congratulations! You have won the lottery! " %in% winning_output)
  # Check if the consolation message is in the losing output
  expect_false("Sorry, better luck next time." %in% losing_output)
})
