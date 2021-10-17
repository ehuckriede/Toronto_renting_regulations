# --- Load Libraries --- #
library(ggplot2)
library(dplyr)
library(gapminder)
library(tidyverse)
library(knitr)
library(recommenderlab)
library(RColorBrewer)

# --- Load Data --- #
roomtype_price <- read.csv(file = '../../gen/analysis/input/data_for_roomtype_plot.csv')

#create plot
roomtype_price$regulation <- as.factor(roomtype_price$regulation)

pdf("../../gen/analysis/output/roomtype_prices_plot.pdf")
roomtype_price %>%
  ggplot(aes(x = room_type, y = price, fill = regulation)) +
  geom_bar(stat = "identity", position = "dodge2") +
  xlab("Room Type") +
  ylab("Price per Night") +
  ggtitle("Price per Room Type", subtitle = "Before and After Regulation") +
  guides(fill = guide_legend(title = "Regulation")) +
  theme_minimal() + scale_fill_discrete(labels = c("Before Regulation", "After Regulation"))
dev.off()

