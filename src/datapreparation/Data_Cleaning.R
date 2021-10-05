#load packages
library(dplyr)

# Load the data
all_data <- read.csv(file = '../../gen/data-preparation/input/Transformed_data.csv')

# Check for outliers
summary(all_data)

# Remove the 3 listings with a price of 0 dollars
all_data <- all_data %>%
    filter(price != "$0.00")

# Transforming price so that it can be a numerical variable instead of character

all_data$price2 <- (gsub("\\,", "", all_data$price))
all_data$price2 <- (gsub("\\$", "", all_data$price2))
all_data$price2 <- as.numeric(all_data$price2)
sum(is.na(all_data$price2))

# Removing columns

all_data_cleaned <- all_data[ -c(1:39, 41:74) ]
summary(all_data_cleaned)

# Checking for missing values

sum(is.na(all_data_cleaned))

# Write output

write.csv(all_data_cleaned, "../../data/Cleaned_data.csv", row.names = FALSE)
