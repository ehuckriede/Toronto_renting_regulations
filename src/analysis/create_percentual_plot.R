# --- Load Libraries --- #
library(ggplot2)
library(dplyr)
library(gapminder)
library(tidyverse)
library(knitr)
library(recommenderlab)
library(RColorBrewer)

# --- Load Data --- #
roomtype_price_percentual_change <- read.csv(file = '../../gen/analysis/input/data_for_percentual_plot.csv')

pdf("../../gen/analysis/output/percentual_prices_plot.pdf")
roomtype_price_percentual_change %>%
  ggplot(aes(x=room_type, y = percentual_change, fill = pos)) +
  geom_bar(stat= "identity", position = "dodge2") +
  xlab("Room Type") + 
  ylab("Percentual Change in Price") +
  ggtitle("Percentual Change in Price per Room Type", subtitle ="Before and After Regulation") + 
  theme_minimal() + theme(legend.position = "none")  + 
  scale_y_continuous(labels = scales::percent_format(accuracy = 1), limits = c(-0.10, 0.25)) 

dev.off()