#load packages
library(dplyr)

# Load the data
cleaned_data <- read.csv(file = '../../data/Cleaned_data.csv')

# Summarize data and state what types of variables we have
summary(cleaned_data)
# price = DV = metric
# regulations = IV = metric
# Control variables (all metric):
## Neighbourhoods: Old_Town, Etobicoke, North_York, East_York, York & Scarborough
## Type of rooms: Entire_room_apt, Hotel_room, Private_room & Shared_room

# Run analysis with regression
price_lm <- lm(price ~ regulation + Old_Town + Etobicoke + North_York + East_York + York + Scarborough + Entire_home_apt + Hotel_room + Private_room + Shared_room, cleaned_data)
summary(price_lm)
