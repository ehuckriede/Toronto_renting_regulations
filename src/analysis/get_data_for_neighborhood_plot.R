# --- Load Libraries --- #
library(dplyr)
library(tidyverse)
library(haven)

# --- Load Data --- #
neighborhood_data <- read.csv(file = '../../gen/data-preparation/output/cleaned_data.csv')

# --- Data for Plot 3 --- #
# Transform neighborhood_data into a pivot long format
neighborhoods_long <- neighborhood_data %>% 
  pivot_longer(cols = old_town:scarborough,
               names_to = "neighborhood",
               values_to = "neigbhorhood_logical")

# Transform the neighborhood_logical column to actual logical values
neighborhoods_long <- neighborhoods_long %>%
  mutate(as.logical(neigbhorhood_logical))

# Filter out the FALSE values
neighborhoods_long <- neighborhoods_long %>% 
  filter(`as.logical(neigbhorhood_logical)`) %>% 
  select(-`as.logical(neigbhorhood_logical)`) 

# Summarise the means of every type of neighborhood before and after regulation
neighborhoods_price_long <- neighborhoods_long %>% 
  group_by(neighborhood, regulation) %>%
  summarise(price = mean(price))

write.csv(neighborhoods_price, "../../gen/analysis/input/data_for_plot_neighborhoods.csv", row.names = FALSE)

