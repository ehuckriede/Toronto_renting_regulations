# Load packages
library(tidyverse)
library(dplyr)


# Load the data
all_data <- read.csv(file = '../../gen/datapreparation/audit/listings_merged.csv')

# Find out how many neighbourhoods exist in Toronto
Neighbourhoods <- data %>%
    count(neighbourhood)

summary(all_data)
# Filter the data for the city centre

OldTown <- c("The Beaches", "East End-Danforth", "Woodbine Corridor", "Greenwood-Coxwell", "Danforth", "Playter Estates-Danforth", "North Riverdale", "Blake-Jones", "South Riverdale", "Cabbagetown-South St.James Town", "Regent Park", "Moss Park", "North St.James Town", "Church-Yonge Corridor", "Bay Street Corridor", "Waterfront Communities-The Island", "Kensington-Chinatown", "University", "Palmerston-Little Italy", "Trinity-Bellwoods", "Niagara", "Dufferin Grove", "Little Portugal", "South Parkdale", "Roncesvalles", "High Park-Swansea", "High Park North", "Runnymede-Bloor West Village", "Junction Area", "Weston-Pellam Park", "Corso Italia-Davenport", "Dovercourt-Wallace Emerson-Junction", "Wychwood", "Annex", "Casa Loma", "Yonge-St.Clair", "Rosedale-Moore Park", "Mount Pleasant East", "Yonge-Eglinton", "Forest Hill South", "Forest Hill North", "Lawrence Park South", "Mount Pleasant West", "Lawrence Park North")

Etobicoke <- c("West Humber-Clairville", "Mount Olive-Silverstone-Jamestown", "Thistletown-Beaumond Heights", "Rexdale-Kipling", "Elms-Old Rexdale", "Kingsview Village-The Westway", "Willowridge-Martingrove-Richview", "Humber Heights-Westmount", "Edenbridge-Humber Valley", "Princess-Rosethorn", "Eringate-Centennial-West Deane", "Markland Wood
", "Etobicoke West Mall", "Islington-City Centre West", "Kingsway South", "Stonegate-Queensway", "Mimico", "New Toronto", "Long Branch", "Alderwood")

NorthYork <- c("Humber Summit", "Humbermede", "Pelmo Park-Humberlea", "Black Creek", "Glenfield-Jane Heights", "Downsview-Roding-CFB", "" )

EastYork <- c()

York <- c()

Scarborough <- c()

center_data <- all_data %>%
    filter(neighbourhood %in% OldTown)

OldTowndistricts <- center_data %>%
    count(neighbourhood)

# Test average price for regulations or not

center_data %>%
    filter(regulations == 0) %>%
    summarise(avg = mean(price))


center_data %>%
    filter(regulations == 1) %>%
    summarise(avg = mean(price))

