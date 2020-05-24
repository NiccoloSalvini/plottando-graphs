Density Plot
================

*author*: **[Niccolò Salvini](https://niccolosalvini.netlify.app/)**
*date*: 24 maggio, 2020

``` r
ddataset = dataset %>%
  dplyr::filter(price >= 500 & price <= 15128)

m = ggplot(ddataset) +
  aes(x = price, fill = nroom) +
  geom_density(adjust = 1L) +
  scale_fill_hue() +
  labs(x = "price", y = "nrooms", title = "Density Plot", subtitle = "price VS nrooms") +
  theme_nicco()
m
```

![](imgOut/Density_Plot-1.png)<!-- -->

<p align="center">

<img src="Rmdgen/imgOut/Density_Plot-1.png" width="1152" />

</p>
