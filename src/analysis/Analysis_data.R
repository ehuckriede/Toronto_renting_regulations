#load packages
library(dplyr)

# Load the data
cleaned_data <- read.csv(file = '../../gen/data-preparation/output/cleaned_data.csv')

# Make dummy variable a factor
cleaned_data$regulation <- as.factor(cleaned_data$regulation)

# Summarize data and state what types of variables we have
summary(cleaned_data)
# price = DV = metric
# regulations = IV = metric
# Control variables (all metric):
## Neighbourhoods: Old_Town, Etobicoke, North_York, East_York, York & Scarborough
## Type of rooms: Entire_room_apt, Hotel_room, Private_room & Shared_room

# Filter on regulations
cleaned_data_1 <- cleaned_data %>%
  filter(regulation == 1)
cleaned_data_0 <- cleaned_data %>%
  filter(regulation == 0)
sum(cleaned_data_0$old_town) - sum(cleaned_data_1$old_town)
sum(cleaned_data_0$etobicoke) - sum(cleaned_data_1$etobicoke)
sum(cleaned_data_0$north_york) - sum(cleaned_data_1$north_york)
sum(cleaned_data_0$entire_home_apt) - sum(cleaned_data_1$entire_home_apt)

# Run analysis with regression
price_lm <- lm(price ~ regulation + old_town + etobicoke + north_york + east_york + york + entire_home_apt + hotel_room + private_room, cleaned_data)
summary(price_lm)
