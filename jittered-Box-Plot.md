Jittered Box Plot
================

*author*: **[Niccolò Salvini](https://niccolosalvini.netlify.app/)**
*date*: 24 maggio, 2020

<p align="center">

``` r
floordataset = dataset %>%
  filter(price >= 500L & price <= 10581L) %>%
  filter(!(floor %in% c("NA", "12", "10")))


p = ggplot(data = floordataset,aes(x=nroom, y=price)) +
  geom_boxplot(fill=NA, alpha=0.5) +
  geom_jitter(aes(colour=floor, text=paste("price is good")), width=0.25, alpha=0.5) +
  geom_hline(yintercept=mean(floordataset$price)) +
  labs(title = "How much the floors affect the price given the number of rooms",
       x = "nroom",
       y = "price")
p
```

![](imgOut/Jittered_Box_Plot-1.png)<!-- -->

</p>
