# Load the data
all_data <- read.csv(file = '../../gen/data-preparation/input/merged_data.csv')

# Divide the 140 neighbourhoods into their corresponding 6 boroughs

Old_Town <- c("The Beaches", "East End-Danforth", "Woodbine Corridor", 
              "Greenwood-Coxwell", "Danforth", "Playter Estates-Danforth", 
              "North Riverdale", "Blake-Jones", "South Riverdale", 
              "Cabbagetown-South St.James Town", "Regent Park", "Moss Park", 
              "North St.James Town", "Church-Yonge Corridor", 
              "Bay Street Corridor", "Waterfront Communities-The Island", 
              "Kensington-Chinatown", "University", "Palmerston-Little Italy", 
              "Trinity-Bellwoods", "Niagara", "Dufferin Grove", 
              "Little Portugal", "South Parkdale", "Roncesvalles", 
              "High Park-Swansea", "High Park North", 
              "Runnymede-Bloor West Village", "Junction Area", 
              "Weston-Pellam Park", "Corso Italia-Davenport", 
              "Dovercourt-Wallace Emerson-Junction", "Wychwood", "Annex",
              "Casa Loma", "Yonge-St.Clair", "Rosedale-Moore Park", 
              "Mount Pleasant East", "Yonge-Eglinton", "Forest Hill South", 
              "Forest Hill North", "Lawrence Park South", "Mount Pleasant West", 
              "Lawrence Park North")

Etobicoke <- c("West Humber-Clairville", "Mount Olive-Silverstone-Jamestown", 
               "Thistletown-Beaumond Heights", "Rexdale-Kipling", 
               "Elms-Old Rexdale", "Kingsview Village-The Westway", 
               "Willowridge-Martingrove-Richview", "Humber Heights-Westmount", 
               "Edenbridge-Humber Valley", "Princess-Rosethorn", 
               "Eringate-Centennial-West Deane", "Markland Wood", 
               "Etobicoke West Mall", "Islington-City Centre West", 
               "Kingsway South", "Stonegate-Queensway", "Mimico (includes Humber Bay Shores)", "New Toronto", 
               "Long Branch", "Alderwood")

North_York <- c("Humber Summit", "Humbermede", "Pelmo Park-Humberlea", 
                "Black Creek", "Glenfield-Jane Heights", "Downsview-Roding-CFB", 
                "York University Heights", "Rustic", "Maple Leaf", 
                "Brookhaven-Amesbury", "Yorkdale-Glen Park", 
                "Englemount-Lawrence", "Clanton Park", "Bathurst Manor", 
                "Westminster-Branson", "Newtonbrook West", "Willowdale West", 
                "Lansing-Westgate", "Bedford Park-Nortown", 
                "St.Andrew-Windfields", "Bridle Path-Sunnybrook-York Mills", 
                "Banbury-Don Mills", "Victoria Village", "Flemingdon Park", 
                "Parkwoods-Donalda", "Pleasant View", "Don Valley Village", 
                "Hillcrest Village", "	Bayview Woods-Steeles", 
                "Newtonbrook East", "Willowdale East", "Bayview Village", 
                "Henry Farm")

East_York <- c("O'Connor-Parkview", "Thorncliffe Park", "Leaside-Bennington", 
               "Broadview North", "Old East York", "Danforth East York", 
               "Woodbine-Lumsden", "Taylor-Massey")

York <- c("Humewood-Cedarvale", "Oakwood Village", "Briar Hill-Belgravia", 
          "Caledonia-Fairbank", "Keelesdale-Eglinton West", "Rockcliffe-Smythe", 
          "Beechborough-Greenbrook", "Weston", "Lambton Baby Point", 
          "Mount Dennis")

Scarborough <- c("Steeles", "L'Amoreaux", "Tam O'Shanter-Sullivan", 
                 "Wexford/Maryvale", "Clairlea-Birchmount", "Oakridge", 
                 "Birchcliffe-Cliffside", "Cliffcrest", "	Kennedy Park", 
                 "Ionview", "Dorset Park", "Bendale", 
                 "Agincourt South-Malvern West", "Agincourt North", "Milliken", 
                 "Rouge", "Malvern", "Centennial Scarborough", "Highland Creek", 
                 "Morningside", "West Hill", "Woburn", "Eglinton East", 
                 "Scarborough Village", "Guildwood")


# Make a dummy for every borough

all_data$Old_Town <- as.numeric(all_data$neighbourhood_cleansed %in% Old_Town)
all_data$Etobicoke <- as.numeric(all_data$neighbourhood_cleansed %in% Etobicoke)
all_data$North_York <- as.numeric(all_data$neighbourhood_cleansed %in% North_York)
all_data$East_York <- as.numeric(all_data$neighbourhood_cleansed %in% East_York)
all_data$York <- as.numeric(all_data$neighbourhood_cleansed %in% York)
all_data$Scarborough <- as.numeric(all_data$neighbourhood_cleansed %in% Scarborough)

# Make a dummy for every room type

all_data$Entire_home_apt <- as.numeric(all_data$room_type == "Entire home/apt")
all_data$Hotel_room <- as.numeric(all_data$room_type == "Hotel room")
all_data$Private_room <- as.numeric(all_data$room_type == "Private room")
all_data$Shared_room <- as.numeric(all_data$room_type == "Shared room")

# Write output
write.csv(all_data, "../../gen/data-preparation/input/Transformed_data.csv", row.names = FALSE)
