library(tidyverse)
library(palmerpenguins)
glimpse(penguins)

ggplot(data = penguins, mapping = aes(x = bill_depth_mm, y = bill_length_mm, 
                                      colour = species, 
                                      shape = species, 
                                      size = body_mass_g,
                                      alpha = flipper_length_mm)) +
  geom_point(size = 2, alpha = 0.5) +
  labs(title = "Bill depth and length",
       subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
       x = "Bill depth (mm)", y = "Bill length (mm)",
       colour = "Species",
       caption = "Source: Palmer Station LTER / palmerpenguins package") +
       scale_colour_viridis_d()

ggplot(penguins, aes(x = bill_depth_mm, y = bill_length_mm)) +
  geom_point() + 
  facet_grid(species ~ island)

