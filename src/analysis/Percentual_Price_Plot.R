# --- Load Libraries --- #
library(ggplot2)
library(dplyr)
library(gapminder)
library(tidyverse)
library(knitr)
library(recommenderlab)
library(RColorBrewer)

# --- Load Data --- #
all_data <- read.csv(file = '../../gen/data-preparation/output/cleaned_data.csv')

# --- Figure 1 --- #

#make dummy variable a factor
all_data$regulation <- as.factor(all_data$regulation)

roomtype_price <- all_data %>%
  group_by(room_type, regulation) %>%
  summarise(price = mean(price))

roomtype_price_percentual_change <- roomtype_price %>%
  group_by(room_type) %>%
  summarise(percentual_change = (last(price) - first(price))/first(price)) %>%
  mutate(pos = percentual_change >= 0)


pdf("../../gen/analysis/output/plot_prices_percentual.pdf")
roomtype_price_percentual_change %>%
  ggplot(aes(x=room_type, y = percentual_change, fill = pos)) +
  geom_bar(stat= "identity", position = "dodge2") +
  xlab("Room Type") + 
  ylab("Percentual Change in Price") +
  ggtitle("Percentual Change in Price per Room Type", subtitle ="Before and After Regulation") + 
  theme_minimal() + theme(legend.position = "none")  + 
  scale_y_continuous(labels = scales::percent_format(accuracy = 1), limits = c(-0.10, 0.25)) 

dev.off()

