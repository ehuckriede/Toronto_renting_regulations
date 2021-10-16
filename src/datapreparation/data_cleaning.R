#load packages
library(dplyr)

# Load the data
all_data <- read.csv(file = '../../gen/data-preparation/input/transformed_data.csv')

# Check for outliers
summary(all_data)

# Remove the 3 listings with a price of 0 dollars
all_data <- all_data %>%
    filter(price != "$0.00")

# Transforming price so that it can be a numerical variable instead of character
all_data$price <- (gsub("\\,", "", all_data$price))
all_data$price <- (gsub("\\$", "", all_data$price))
all_data$price <- as.numeric(all_data$price)
sum(is.na(all_data$price))

# Removing unnecessary columns (keeping room_type, as it is needed for the plots)
all_data_cleaned <- all_data[ -c(1:32, 34:39, 41:74) ]
summary(all_data_cleaned)

# Checking for missing values
sum(is.na(all_data_cleaned))

# Identifying the NAs starting at the last variable of the dataset
sum(is.na(all_data_cleaned$identity_verified_dummy))
sum(is.na(all_data_cleaned$superhost_dummy))
sum(is.na(all_data_cleaned$host_since_dummy)) # here we find the 10 NAs

# Filtering out the NAs 
all_data_cleaned <- all_data_cleaned %>% filter(!is.na(host_since_dummy))

# Write output
dir.create('../../gen/data-preparation/output/', recursive = T)

write.csv(all_data_cleaned, "../../gen/data-preparation/output/cleaned_data.csv", row.names = FALSE)