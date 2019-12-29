## Milan map, circles are houses rented within Circonvallazione
## Each circle has its own marker which is the price for that house

leaflet() %>%
  setView(lng = 9.18994, lat = 45.4703, zoom = 13) %>% 
  addProviderTiles(providers$OpenStreetMap.Mapnik) %>%
  addCircles(dataset$long, dataset$lat, label = paste0('this is the price', as.character(dataset$price)))