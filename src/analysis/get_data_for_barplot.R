# --- Load Libraries --- #
library(dplyr)
library(haven)

# --- Load Data --- #
all_data <- read.csv(file = '../../gen/data-preparation/output/cleaned_data.csv')

# --- Data for Plot 1 --- #

regulation_price <- all_data %>%
  group_by(regulation) %>%
  summarise(price = mean(price))

write.csv(regulation_price, "../../gen/analysis/input/data_for_barplot.csv", row.names = FALSE)

