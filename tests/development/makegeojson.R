convert_all_shp <- function(){
  
  name <- "barn"
  maps::shp2geojson(shapefile = name, folder = "shp", geojson = paste0("geojson/", name))
  tmp <- geojsonio::geojson_read(paste0("geojson/", name, ".geojson"), what = "sp")
  barn <- shinymap::utm33_to_leaflet(map = tmp)
  usethis::use_data(barn, overwrite = TRUE)

  name <- "kols"
  maps::shp2geojson(shapefile = name, folder = "shp", geojson = paste0("geojson/", name), reduce_size = FALSE, amount = 1.0)
  tmp <- geojsonio::geojson_read(paste0("geojson/", name, ".geojson"), what = "sp")
  kols <- shinymap::utm33_to_leaflet(map = tmp)
  usethis::use_data(kols, overwrite = TRUE)

  name <- "dagkir"
  maps::shp2geojson(shapefile = name, folder = "shp", geojson = paste0("geojson/", name))
  tmp <- geojsonio::geojson_read(paste0("geojson/", name, ".geojson"), what = "sp")
  dagkir <- shinymap::utm33_to_leaflet(map = tmp)
  usethis::use_data(dagkir, overwrite = TRUE)

  name <- "dagkir2"
  maps::shp2geojson(shapefile = name, folder = "shp", geojson = paste0("geojson/", name))
  tmp <- geojsonio::geojson_read(paste0("geojson/", name, ".geojson"), what = "sp")
  dagkir2 <- shinymap::utm33_to_leaflet(map = tmp)
  usethis::use_data(dagkir2, overwrite = TRUE)

  fodsel <- shinymap::utm33_to_leaflet(map = tmp)
  usethis::use_data(fodsel, overwrite = TRUE)

  gyn <- shinymap::utm33_to_leaflet(map = tmp)
  usethis::use_data(gyn, overwrite = TRUE)
}
