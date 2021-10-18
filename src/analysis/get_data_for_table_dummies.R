# --- Load Libraries --- #
library(dplyr)
library(haven)

# --- Load Data --- #
host_data <- read.csv(file = '../../gen/data-preparation/output/cleaned_data.csv')

# --- Table 1 --- #

host_price <- host_data %>%
  group_by(host_since_dummy, superhost_dummy, regulation) %>%
  summarise(price = mean(price)) 

gridExtra::grid.table(host_price)


write.csv(host_price, "../../gen/analysis/output/table_host_dummies.csv", row.names = FALSE)
