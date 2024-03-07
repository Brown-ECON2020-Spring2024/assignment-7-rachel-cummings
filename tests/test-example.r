library(testdat)

# Task 3, tests 1 and 3
test_that("This is an example test", {
  b <- summary(model)$coefficients["gdpPercap", "Estimate"]
  expect_equal(b, 0.00076, tolerance = 0.01)
  expect_equal(nrow(data),1704)

})

# Task 3, test 3
expect_unique(data = data, c(year, country))
expect_range(data=data, gdpPercap, 0, 1e6)
expect_values(data = data, continent, c("Asia", "Europe", "Africa", "Americas", "Oceania"))