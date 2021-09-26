#load packages
library(dplyr)

# Load the data
all_data <- read.csv(file = '../../gen/datapreparation/output/Transformed_data.csv')

# Check for outliers
summary(all_data)

# Remove the 3 listings with a price of 0 dollars
all_data <- all_data %>%
    filter(price != 0)

# Removing columns

cols_to_drop = c('id', 'name', 'host_id', 'host_name', 'neighbourhood_group', 'neighbourhood', 'latitude', 'longitude', 'room_type', 'minimum_nights', 'number_of_reviews_ltm', 'license', 'last_review', 'reviews_per_month', 'calculated_host_listings_count', 'availability_365' )
all_data_cleaned = all_data[, which(!colnames(all_data)%in%cols_to_drop)]

# Write output
write.csv(all_data_cleaned, "../../gen/datapreparation/output/Cleaned_data.csv", row.names = FALSE)
