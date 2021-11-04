library(collapsibleTreelocal)
library(tibble)
load(system.file("extdata/Geography.rda", package = "collapsibleTreelocal"))
context("Margin sizing")

geo <- collapsibleTreelocal(
  Geography,
  hierarchy = c("continent", "type", "country")
)
geoSummary <- collapsibleTreelocalSummary(
  Geography,
  hierarchy = c("continent", "type", "country")
)

test_that("left margins are the correct size - data frame", {
  expect_gt(geo$x$options$margin$left, 50)
  expect_gt(geoSummary$x$options$margin$left, 50)
  expect_lt(geo$x$options$margin$left, 100)
  expect_lt(geoSummary$x$options$margin$left, 100)
})

test_that("right margins are the correct size - data frame", {
  expect_gt(geo$x$options$margin$right, 250)
  expect_gt(geoSummary$x$options$margin$right, 250)
  expect_lt(geo$x$options$margin$right, 300)
  expect_lt(geoSummary$x$options$margin$right, 300)
})

Geography <- as_tibble(Geography)
geo <- collapsibleTreelocal(
  Geography,
  hierarchy = c("continent", "type", "country")
)
geoSummary <- collapsibleTreelocalSummary(
  Geography,
  hierarchy = c("continent", "type", "country")
)

test_that("left margins are the correct size - tibble", {
  expect_gt(geo$x$options$margin$left, 50)
  expect_gt(geoSummary$x$options$margin$left, 50)
  expect_lt(geo$x$options$margin$left, 100)
  expect_lt(geoSummary$x$options$margin$left, 100)
})

test_that("right margins are the correct size - tibble", {
  expect_gt(geo$x$options$margin$right, 250)
  expect_gt(geoSummary$x$options$margin$right, 250)
  expect_lt(geo$x$options$margin$right, 300)
  expect_lt(geoSummary$x$options$margin$right, 300)
})
