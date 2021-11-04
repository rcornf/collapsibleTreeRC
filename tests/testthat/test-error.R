library(collapsibleTreelocal)
context("Error handling")

test_that("df is a data frame", {
  expect_error(collapsibleTreelocal(sunspots,c("Year","Solar.R")))
  expect_error(collapsibleTreelocalSummary(sunspots,c("Year","Solar.R")))
  expect_error(collapsibleTreelocalNetwork(sunspots,c("Year","Solar.R")))
})

test_that("column names are in data frame", {
  expect_error(collapsibleTreelocal(warpbreaks, c("wool", "tensions")))
  expect_error(collapsibleTreelocalSummary(warpbreaks, c("wool", "tensions")))
})

test_that("attribute name is in data frame", {
  expect_error(collapsibleTreelocal(warpbreaks, c("wool", "tensions"), attribute = "break"))
  expect_error(collapsibleTreelocalSummary(warpbreaks, c("wool", "tensions"), attribute = "break"))
})

test_that("column names are not too short (might be fixed in the future)", {
  expect_error(collapsibleTreelocal(warpbreaks, c("wool")))
  expect_error(collapsibleTreelocalSummary(warpbreaks, c("wool")))
})
