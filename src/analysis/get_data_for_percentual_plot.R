# --- Load Libraries --- #
library(dplyr)
library(tidyverse)

# --- Load Data --- #
roomtype_price <- read.csv(file = '../../gen/analysis/input/data_for_full_plot.csv')

# --- Data for Plot 2 --- #

roomtype_price_percentual_change <- roomtype_price %>%
  group_by(room_type) %>%
  summarise(percentual_change = (last(price) - first(price))/first(price)) %>%
  mutate(pos = percentual_change >= 0)

write.csv(roomtype_price_percentual_change, "../../gen/analysis/input/data_for_percentual_plot.csv", row.names = FALSE)