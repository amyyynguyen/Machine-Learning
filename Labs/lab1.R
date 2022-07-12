install.packages("hflights")
# Installing tidyverse may take a couple minutes
# install.packages("tidyverse")
# Load packages
library(hflights) library(tidyverse)
# Explore data
data(hflights)
flights = as_tibble(hflights) # convert to a tibble and print flights

library(readr)

x <- read_csv("online-shopping.csv")

x_gathered = gather(x, key = "product", value = "quantity", -User)

library(ggplot2)

x_gathered %>%
  ggplot(aes(x = product, y = quantity, group = User, color = User)) + 
  geom_line() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

library(ISLR)
library(tidyverse)
library(class)
library(FNN)

data(Carseats)

? Carseats

dim(Carseats)

Carseats = Carseats %>% 
  mutate(High = as.factor(ifelse(Sales > median(Sales), "Yes", "No"))) %>% 
  se4lect(-Sales, -ShelveLoc, -Urban, -US)

summary(Carseats)

str(Carseats)

Carseats$High




