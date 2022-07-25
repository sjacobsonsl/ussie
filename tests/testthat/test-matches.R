umm <- uss_make_matches(engsoccerdata::spain, "Spain")

# mine:

test_that("output is a tibble", {
  expect_true(tibble::is_tibble(umm))
})

test_that("names of output columns are correct", {
  expect_named(umm, c("country", "tier", "season", "date", "home", "visitor",
    "goals_home", "goals_visitor"))
})

test_that("country column is correct", {
  expect_identical(umm$country, rep("Spain", 23915))
})

# theirs:

test_that("uss_make_matches works", {

  # use the function
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_true(tibble::is_tibble(italy))
})

test_that("uss_make_matches works", {

  # use the function
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_true(tibble::is_tibble(italy))
  expect_named(
    italy,
    c("country", "tier", "season", "date", "home", "visitor",
      "goals_home", "goals_visitor")
  )
})

test_that("country column is correct", {
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_identical(unique(italy$country), "Italy")
})

test_that("uss_make_matches works", {

  # use the function
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  # when you find a bug, add a test: 👋 from Ian
  expect_s3_class(italy$tier, "factor")
})
