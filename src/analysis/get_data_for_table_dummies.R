# --- Load Libraries --- #
library(dplyr)
library(haven)

# --- Load Data --- #
host_data <- read.csv(file = '../../gen/data-preparation/output/cleaned_data.csv')

# --- Table 1 --- #

# Make datasetd
host_price <- host_data %>%
  group_by(host_since_dummy, superhost_dummy, regulation) %>%
  summarise(price = mean(price)) 

# Create table 
pdf("../../gen/analysis/output/table_host_dummies.pdf")
gridExtra::grid.table(host_price)
dev.off()

