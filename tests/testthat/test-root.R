library(collapsibleTreelocal)
context("Root labelling")

test_that("unlabelled root works for collapsibleTree", {
  wb <- collapsibleTreelocal(warpbreaks, c("wool", "tension", "breaks"))
  expect_is(wb,"htmlwidget")
  expect_is(wb$x$data,"list")
  expect_is(wb$x$options$hierarchy,"character")
})

test_that("unlabelled root works for collapsibleTreeSummary", {
  wb <- collapsibleTreelocalSummary(warpbreaks, c("wool", "tension", "breaks"))
  expect_is(wb,"htmlwidget")
  expect_is(wb$x$data,"list")
  expect_is(wb$x$options$hierarchy,"character")
})

test_that("labeled root works for collapsibleTree", {
  wblabeled <- collapsibleTreelocal(warpbreaks, c("wool", "tension", "breaks"), "a label")
  expect_is(wblabeled$x$data,"list")
  expect_is(wblabeled$x$options$hierarchy,"character")
})

test_that("labeled root works for collapsibleTreeSummary", {
  wblabeled <- collapsibleTreelocalSummary(warpbreaks, c("wool", "tension", "breaks"), "a label")
  expect_is(wblabeled$x$data,"list")
  expect_is(wblabeled$x$options$hierarchy,"character")
})
