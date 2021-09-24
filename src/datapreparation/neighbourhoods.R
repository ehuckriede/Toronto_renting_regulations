# Load packages
library(tidyverse)
library(dplyr)


# Load the data
all_data <- read.csv(file = '../../gen/datapreparation/audit/listings_merged.csv')

# Find out how many distinct neighbourhoods exist in Toronto
Neighbourhoods <- all_data %>%
    count(neighbourhood)

summary(all_data)

# Divide the neighborhoods into their corresponding boroughs

OldTown <- c("The Beaches", "East End-Danforth", "Woodbine Corridor", "Greenwood-Coxwell", "Danforth", "Playter Estates-Danforth", "North Riverdale", "Blake-Jones", "South Riverdale", "Cabbagetown-South St.James Town", "Regent Park", "Moss Park", "North St.James Town", "Church-Yonge Corridor", "Bay Street Corridor", "Waterfront Communities-The Island", "Kensington-Chinatown", "University", "Palmerston-Little Italy", "Trinity-Bellwoods", "Niagara", "Dufferin Grove", "Little Portugal", "South Parkdale", "Roncesvalles", "High Park-Swansea", "High Park North", "Runnymede-Bloor West Village", "Junction Area", "Weston-Pellam Park", "Corso Italia-Davenport", "Dovercourt-Wallace Emerson-Junction", "Wychwood", "Annex", "Casa Loma", "Yonge-St.Clair", "Rosedale-Moore Park", "Mount Pleasant East", "Yonge-Eglinton", "Forest Hill South", "Forest Hill North", "Lawrence Park South", "Mount Pleasant West", "Lawrence Park North")

Etobicoke <- c("West Humber-Clairville", "Mount Olive-Silverstone-Jamestown", "Thistletown-Beaumond Heights", "Rexdale-Kipling", "Elms-Old Rexdale", "Kingsview Village-The Westway", "Willowridge-Martingrove-Richview", "Humber Heights-Westmount", "Edenbridge-Humber Valley", "Princess-Rosethorn", "Eringate-Centennial-West Deane", "Markland Wood
", "Etobicoke West Mall", "Islington-City Centre West", "Kingsway South", "Stonegate-Queensway", "Mimico", "New Toronto", "Long Branch", "Alderwood")

NorthYork <- c("Humber Summit", "Humbermede", "Pelmo Park-Humberlea", "Black Creek", "Glenfield-Jane Heights", "Downsview-Roding-CFB", "York University Heights", "Rustic", "Maple Leaf", "Brookhaven-Amesbury", "Yorkdale-Glen Park", "Englemount-Lawrence", "Clanton Park", "Bathurst Manor", "Westminster-Branson", "Newtonbrook West", "Willowdale West", "Lansing-Westgate", "Bedford Park-Nortown", "St. Andrew-Windfields", "Bridle Path-Sunnybrook-York Mills", "Banbury-Don Mills", "Victoria Village", "Flemingdon Park", "Parkwoods-Donalda", "Pleasant View", "Don Valley Village", "Hillcrest Village", "	Bayview Woods-Steeles", "Newtonbrook East", "Willowdale East", "Bayview Village", "Henry Farm")

EastYork <- c("O'Connor-Parkview", "Thorncliffe Park", "Leaside-Bennington", "Broadview North", "Old East York", "Danforth - East York", "Woodbine-Lumsden", "Crescent Town")

York <- c("Humewood-Cedarvale", "Oakwood Village", "Briar Hill-Belgravia", "Caledonia-Fairbank", "Keelesdale-Eglinton West", "Rockcliffe-Smythe", "Beechborough-Greenbrook", "Weston", "Lambton Baby Point", "Mount Dennis")

Scarborough <- c("Steeles", "L'Amoreaux", "Tam O'Shanter-Sullivan", "Wexford-Maryvale", "Clairlea-Birchmount", "Oakridge", "Birchcliffe-Cliffside", "Cliffcrest", "	Kennedy Park", "Ionview", "Dorset Park", "Bendale", "	Agincourt South-Malvern West", "Agincourt North", "	Milliken", "Rouge", "Malvern", "Centennial Scarborough", "Highland Creek", "Morningside", "West Hill", "Woburn", "Eglinton East", "Scarborough Village", "Guildwood")

center_data <- all_data %>%
    filter(neighbourhood %in% OldTown)

OldTowndistricts <- center_data %>%
    count(neighbourhood)

# Test average price OldTown for regulations or not

center_data %>%
    filter(regulation == 0) %>%
    summarise(avg = mean(price))


center_data %>%
    filter(regulation == 1) %>%
    summarise(avg = mean(price))

