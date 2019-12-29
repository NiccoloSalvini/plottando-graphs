## Facetted Plot 
## groups are make by diff num of rooms


ldataset = dataset %>%
  filter(price >= 500L & price <= 5047L) %>%
  filter(condom >= 0L & condom <= 1030L) %>%
  filter(!(floor %in% c("NA", "12", "10")))

q = ggplot(ldataset) +
  aes(x = price, y = condom, colour = condom, size = condom) +
  geom_point() +
  scale_color_gradient() +
  theme_minimal() +
  facet_wrap(vars(nroom), scales = "free_x")
ggplotly(q)
