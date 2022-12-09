install.packages("tidyverse")
library(tidyverse)

nrow(starwars) #gets number of rows in a dataset
ncol(starwars) #gets number of columns in a dataset
dim(starwars)  #gets the dimensions of a dataset r c

ggplot(data = starwars, mapping = aes(x = height, y = mass)) + 
  geom_point() + 
  labs(title = "Mass vs. height of Starwars characters", 
   x = "Height (cm)", y = "Weight (kg)")


