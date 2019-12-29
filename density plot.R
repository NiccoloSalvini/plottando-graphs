## Density plot
## How the num of rooms in a house impacts the price 

ddataset = dataset %>%
  filter(dataset$price >= 500L & dataset$price <= 15128L)

m = ggplot(ddataset) +
  aes(x = ddataset$price, fill = ddataset$nroom) +
  geom_density(adjust = 1L) +
  scale_fill_hue() +
  labs(x = "price", y = "nrooms", title = "Density Plot", subtitle = "price VS nrooms")
ggplotly(m)