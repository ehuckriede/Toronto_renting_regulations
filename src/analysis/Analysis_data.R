#load packages
library(dplyr)

# Load the data
cleaned_data <- read.csv(file = '../../gen/data-preparation/output/cleaned_data.csv')

# Summarize data and state what types of variables we have
summary(cleaned_data)
# price = DV = metric
# regulations = IV = metric
# Control variables (all metric):
## Neighbourhoods: Old_Town, Etobicoke, North_York, East_York, York & Scarborough
## Type of rooms: Entire_room_apt, Hotel_room, Private_room & Shared_room

# Set one dummy variable of the neighbourhoods to zero and one of the roomtypes to zero since the values of all neighbourhoods and roomtypes will always add up to 1
cleaned_data$scarborough <- 0
cleaned_data$shared_room <- 0

# Run analysis with regression
price_lm <- lm(price ~ regulation + old_town + etobicoke + north_york + east_york + york + scarborough + entire_home_apt + hotel_room + private_room + shared_room, cleaned_data)
summary(price_lm)
