#load packages
library(dplyr)
library(haven)

# Load the data
cleaned_data <- read.csv(file = '../../gen/data-preparation/output/cleaned_data.csv')

# Summarize data and state what types of variables we have
summary(cleaned_data)
# price = DV = metric
# regulations = IV = metric
# Control variables (all metric):
## Neighbourhoods: Old_Town, Etobicoke, North_York, East_York, York & Scarborough
## Type of rooms: Entire_room_apt, Hotel_room, Private_room & Shared_room
## Host since: before May 19 2016 and after May 19 2016
## Superhost status: yes or no
## Host identity verified: yes no 

# Run analysis with regression
price_lm <- lm(price ~ regulation + old_town + etobicoke + north_york + east_york + york + entire_home_apt + hotel_room + private_room + host_since_dummy + superhost_dummy + identity_verified_dummy, cleaned_data)
summary(price_lm)

dir.create('../../gen/analysis/output/', recursive = T)
sink("../../gen/analysis/output/linear_model_output.txt")
