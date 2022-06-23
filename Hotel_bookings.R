install.packages("tidyverse")
library(tidyverse)

install.packages("skimr")
install.packages("janitor")

library(skimr)
library(janitor)

install.packages('ggplot2')
library(ggplot2)

read_csv("hotel_bookings.csv")
hotel_bookings <- read_csv("hotel_bookings.csv")

head(hotel_bookings)
hotel_bookings_v2 <- arrange(hotel_bookings, desc(lead_time))
mean(hotel_bookings_v2$lead_time)

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, ))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))