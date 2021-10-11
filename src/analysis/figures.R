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


pdf("../../gen/analysis/output/plot_prices.pdf")
roomtype_price %>%
  ggplot(aes(x = room_type, y = price, fill = regulation)) +
  geom_bar(stat = "identity", position = "dodge2") +
  xlab("Room Type") +
  ylab("Price per Night") +
  ggtitle("Price per Room Type", subtitle = "Before and After Regulation") +
  guides(fill = guide_legend(title = "Regulation")) +
  theme_minimal() + scale_fill_discrete(labels = c("Before Regulation", "After Regulation"))
dev.off()

  