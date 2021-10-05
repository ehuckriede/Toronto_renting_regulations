#load packages
library(dplyr)

# Load the data
Cleaned_data <- read.csv(file = '../../data/Cleaned_data.csv')

# Summarize data and state what types of variables we have
summary(Cleaned_data)
# price = DV = metric
# regulations = IV = metric
# Control variables (all metric):
## Neighbourhoods: Old_Town, Etobicoke, North_York, East_York, York & Scarborough
## Type of rooms: Entire_room_apt, Hotel_room, Private_room & Shared_room

# Run analysis with regression