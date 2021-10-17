# --- Load Libraries --- #
library(ggplot2)
library(dplyr)
library(gapminder)
library(tidyverse)
library(knitr)
library(recommenderlab)
library(RColorBrewer)

# --- Load Data --- #
neighborhoods_price <- read.csv(file = '../../gen/analysis/input/data_for_plot_neighborhoods.csv')

#create plot
neighborhoods_price_long$regulation <- as.factor(neighborhoods_price_long$regulation)
neighborhoods_price_long$neighborhood <- as.factor(neighborhoods_price_long$neighborhood)

pdf("../../gen/analysis/output/neighborhoods_prices_plot.pdf")
neighborhoods_price_long %>% 
  ggplot(aes(x = neighborhood, y = price, fill = regulation)) +
  geom_bar(stat = "identity", position = "dodge2") +
  xlab("Neighborhood") +
  ylab("Price per Night") +
  ggtitle("Price per Neighborhood", subtitle = "Before and After Regulation") +
  guides(fill = guide_legend(title = "Regulation")) +
  theme_minimal() + scale_fill_discrete(labels = c("Before Regulation", "After Regulation"))
dev.off()



