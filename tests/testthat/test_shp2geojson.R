context("shp2geojson")

test_that("shp2geojson with default", {
  expect_equal_to_reference(
    shp2geojson(
      folder = "data",
      shapefile = "shapefile1",
      geojson = NULL
    ),
    "data/shp2geojson1.json"
  )
})

test_that("shp2geojson with reduce_size = FALSE", {
  expect_equal_to_reference(
    shp2geojson(
      folder = "data",
      shapefile = "shapefile1",
      geojson = NULL,
      reduce_size = FALSE
    ),
    "data/shp2geojson2.json"
  )
})

test_that("shp2geojson with reduce_size = FALSE and amount = 0.01", {
  expect_equal_to_reference(
    shp2geojson(
      folder = "data",
      shapefile = "shapefile1",
      geojson = NULL,
      reduce_size = FALSE,
      amount = 0.01
    ),
    "data/shp2geojson2.json"
  )
})

test_that("shp2geojson with amount = 0.01 and geojson != NULL", {
  expect_equal_to_reference(
    shp2geojson(
      folder = "data",
      shapefile = "shapefile2",
      geojson = "tmp",
      amount = 0.01
    ),
    "data/shp2geojson3.json"
  )
  file.remove("tmp.geojson")
})
