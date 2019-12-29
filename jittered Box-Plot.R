## Jittered Box-Plot 
## How floor position in buildings impacts the price for the house 
## Milan house market


floordataset = dataset %>%
  filter(price >= 500L & price <= 10581L) %>%
  filter(!(floor %in% c("NA", "12", "10")))

p = ggplot(data = floordataset,aes(x=floordataset$nroom, y=floordataset$price)) +
  geom_boxplot(fill=NA, alpha=0.5) +
  geom_jitter(aes(colour=floordataset$floor, text=paste("price is good")), width=0.25, alpha=0.5) +
  geom_hline(yintercept=mean(floordataset$price)) +
  labs(title = "How much the floors affect the price given the number of rooms",
       x = "nroom",
       y = "price")
ggplotly(p)
