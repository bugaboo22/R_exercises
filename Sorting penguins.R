install.packages("here")
library(here)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(janitor)
install.packages("dplyr")
library(dplyr)
install.packages("palmerpenguins")
library(palmerpenguins)
install.packages("tidyverse")
library(tidyverse)

glimpse(penguins)

penguins %>%
  rename(island_new=island)

rename_with(penguins, tolower)

clean_names(penguins)

penguins %>% arrange(bill_length_mm)

penguins %>% arrange(-bill_length_mm)

penguins_2 <- penguins %>% arrange(-bill_length_mm)

View(penguins_2)

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm=
                                                            mean(bill_length_mm))
penguins %>% filter(species == "Adelie")

penguins %>% 
  drop_na() %>% 
  group_by(species) %>% 
  summarize(min(bill_depth_mm))