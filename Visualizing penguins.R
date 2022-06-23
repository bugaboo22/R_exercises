install.packages("tidyverse")
install.packages("palmerpenguins")
install.packages("ggplot2")
library(tidyverse)
library(palmerpenguins)
library(ggplot2)

View(penguins)

ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  labs(title = "Body mass vs. flipper length", subtitle = "Three different penguin species") +
  annotate("text", x=220, y=3500, label="Gentoos are the largest", color="purple",
           fontface="bold", angle=25)

p <- ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  labs(title = "Body mass vs. flipper length", subtitle = "Three different penguin species") +
  annotate("text", x=220, y=3500, label="Gentoos are the largest", color="purple",
           fontface="bold", angle=25)