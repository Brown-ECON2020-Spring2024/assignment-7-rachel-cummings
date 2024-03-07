test_that("This is an example test", {
  a <- 2
  b <- 10
  expect_equal(a * b, 20)
})

# Task 3, tests 1 and 2
test_that("This is an example test", {
  b <- summary(model)$coefficients["gdpPercap", "Estimate"]
  expect_equal(b, 0.00076, tolerance = 0.00001)
  expect_equal(nrow(data),1704)

})

# Task 3, test 3
test_that("This is an example test", {
  expect_unique(data = data, c(year, country))
  expect_range(data=data, gdpPercap, 0, 1e6)
  expect_values(data = data, continent, c("Asia", "Europe", "Africa", "Americas", "Oceania"))
})

