library(collapsibleTreelocal)
context("Missing values")

test_that("missing values in hierarchy", {
  expect_silent(collapsibleTreelocal(airquality,c("Month","Day","Solar.R")))
  expect_silent(collapsibleTreelocalSummary(airquality,c("Month","Day","Solar.R")))
})

test_that("there are no missing values in attribute", {
  expect_error(collapsibleTreelocal(airquality,c("Month","Day","Solar.R"),attribute="Ozone"))
  expect_error(collapsibleTreelocalSummary(airquality,c("Month","Day","Solar.R"),attribute="Ozone"))
})
