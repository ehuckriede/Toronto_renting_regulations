# Load the data
all_data <- read.csv(file = '../../gen/data-preparation/input/merged_data.csv')
View(all_data)

# Divide the 140 neighbourhoods into their corresponding 6 boroughs
old_town <- c("The Beaches", "East End-Danforth", "Woodbine Corridor", 
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

etobicoke <- c("West Humber-Clairville", "Mount Olive-Silverstone-Jamestown", 
               "Thistletown-Beaumond Heights", "Rexdale-Kipling", 
               "Elms-Old Rexdale", "Kingsview Village-The Westway", 
               "Willowridge-Martingrove-Richview", "Humber Heights-Westmount", 
               "Edenbridge-Humber Valley", "Princess-Rosethorn", 
               "Eringate-Centennial-West Deane", "Markland Wood", 
               "Etobicoke West Mall", "Islington-City Centre West", 
               "Kingsway South", "Stonegate-Queensway", "Mimico (includes Humber Bay Shores)", "New Toronto", 
               "Long Branch", "Alderwood")

north_york <- c("Humber Summit", "Humbermede", "Pelmo Park-Humberlea", 
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

east_york <- c("O'Connor-Parkview", "Thorncliffe Park", "Leaside-Bennington", 
               "Broadview North", "Old East York", "Danforth East York", 
               "Woodbine-Lumsden", "Taylor-Massey")

york <- c("Humewood-Cedarvale", "Oakwood Village", "Briar Hill-Belgravia", 
          "Caledonia-Fairbank", "Keelesdale-Eglinton West", "Rockcliffe-Smythe", 
          "Beechborough-Greenbrook", "Weston", "Lambton Baby Point", 
          "Mount Dennis")

scarborough <- c("Steeles", "L'Amoreaux", "Tam O'Shanter-Sullivan", 
                 "Wexford/Maryvale", "Clairlea-Birchmount", "Oakridge", 
                 "Birchcliffe-Cliffside", "Cliffcrest", "	Kennedy Park", 
                 "Ionview", "Dorset Park", "Bendale", 
                 "Agincourt South-Malvern West", "Agincourt North", "Milliken", 
                 "Rouge", "Malvern", "Centennial Scarborough", "Highland Creek", 
                 "Morningside", "West Hill", "Woburn", "Eglinton East", 
                 "Scarborough Village", "Guildwood")


# Make a dummy for every borough
all_data$old_town <- as.numeric(all_data$neighbourhood_cleansed %in% old_town)
all_data$etobicoke <- as.numeric(all_data$neighbourhood_cleansed %in% etobicoke)
all_data$north_york <- as.numeric(all_data$neighbourhood_cleansed %in% north_york)
all_data$east_york <- as.numeric(all_data$neighbourhood_cleansed %in% east_york)
all_data$york <- as.numeric(all_data$neighbourhood_cleansed %in% york)
all_data$scarborough <- as.numeric(all_data$neighbourhood_cleansed %in% scarborough)

# Make a dummy for every room type
all_data$entire_home_apt <- as.numeric(all_data$room_type == "Entire home/apt")
all_data$hotel_room <- as.numeric(all_data$room_type == "Hotel room")
all_data$private_room <- as.numeric(all_data$room_type == "Private room")
all_data$shared_room <- as.numeric(all_data$room_type == "Shared room")

# Calculate mean date of "host_since" variable do determine dummy variable level 
mean.Date(as.Date(all_data$host_since), na.rm =TRUE)

# Make a dummy variable for variable "host_since"
all_data$host_since_dummy <- ifelse(all_data$host_since > as.Date("2016-05-19", format = "%Y-%M-%d") &
                      all_data$host_since < as.Date(max(as.Date(all_data$host_since), na.rm=TRUE), format = "%Y-%M-%d"), 1, 0)

# Check table of "host_response_time" variable 
table(all_data$host_response_time)

# Make a dummy for variable "host_is_superhost"
all_data$host_is_superhost <- as.numeric(all_data$host_is_superhost == "t")

# Make a dummy for "host_identity_verified"
all_data$host_identity_verified <- as.numeric(all_data$host_identity_verified == "t")

# Write output
write.csv(all_data, "../../gen/data-preparation/input/transformed_data.csv", row.names = FALSE)
