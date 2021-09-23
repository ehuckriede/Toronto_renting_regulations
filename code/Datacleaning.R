# Loading datafile
listings_merged <- read.csv("data/listings_merged.csv")

# Check for outliers
summary(listings_merged)

# Removed the 3 listings with a price of 0 dollars
listings_merged <- listings_merged %>%
    filter(price != 0)

# Removing columns
cols_to_drop = c('id', 'name', 'host_id', 'host_name', 'neighbourhood_group', 'neighbourhood', 'latitude', 'longitude', 'room_type', 'minimum_nights', 'number_of_reviews', 'last_review', 'reviews_per_month', 'calculated_host_listings_count', 'availability_365' )
listings_merged_tiny = listings_merged[, which(!colnames(listings_merged)%in%cols_to_drop)]

