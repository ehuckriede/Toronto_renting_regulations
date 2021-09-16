#load packages + data

library(tidyverse)
library(dplyr)

all_data <- read.csv(file = 'data/listings_merged.csv')

# Find out how many neighbourhoods exist in Toronto
Neighbourhoods <- data %>%
    count(neighbourhood)

# Filter the data for the city centre

OldTown <- c("The Beaches", "East End-Danforth", "Woodbine Corridor", "Greenwood-Coxwell", "Danforth", "Playter Estates-Danforth", "North Riverdale", "Blake-Jones", "South Riverdale", "Cabbagetown-South St.James Town", "Regent Park", "Moss Park", "North St.James Town", "Church-Yonge Corridor", "Bay Street Corridor", "Waterfront Communities-The Island", "Kensington-Chinatown", "University", "Palmerston-Little Italy", "Trinity-Bellwoods", "Niagara", "Dufferin Grove", "Little Portugal", "South Parkdale", "Roncesvalles", "High Park-Swansea", "High Park North", "Runnymede-Bloor West Village", "Junction Area", "Weston-Pellam Park", "Corso Italia-Davenport", "Dovercourt-Wallace Emerson-Junction", "Wychwood", "Annex", "Casa Loma", "Yonge-St.Clair", "Rosedale-Moore Park", "Mount Pleasant East", "Yonge-Eglinton", "Forest Hill South", "Forest Hill North", "Lawrence Park South", "Mount Pleasant West", "Lawrence Park North")

center_data <- data %>%
    filter(neighbourhood %in% OldTown)

Neighbourhoods2 <- center_data %>%
    count(neighbourhood)

# Test average price for regulations or not

center_data %>%
    filter(regulations == 0) %>%
    summarise(avg = mean(price))


center_data %>%
    filter(regulations == 1) %>%
    summarise(avg = mean(price))

