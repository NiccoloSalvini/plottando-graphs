## simple two var box-plot comparison
## as simple as effective 

vdataset = dataset %>%
  filter(condom >= 200L & condom <= 500L) %>%
  filter(!(heating %in% "Unknown")) %>%
  filter(!(ac %in% c("Assente", "NA", "Assente, solo freddo", "Predisposizione impianto, solo freddo", 
                     "Predisposizione impianto", "Presente", "Assente, solo caldo")))

s = ggplot(vdataset) +
  aes(x = heating, y = condom, fill = heating) +
  geom_boxplot() +
  scale_fill_hue() +
  theme_minimal()
