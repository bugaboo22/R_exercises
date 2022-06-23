install.packages("Tmisc")
library(Tmisc)
data("quartet")
View(quartet)

install.packages("tidyverse")
library(tidyverse)

install.packages("ggplot2")
library(ggplot2)

install.packages("datasauRus")
library(datasauRus)

ggplot(datasaurus_dozen,aes(x=x, y=y, colour=dataset)) +
  geom_point() +theme(legend.position = "none")+facet_wrap(~dataset)

