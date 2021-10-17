# --- Load Libraries --- #
library(ggplot2)
library(dplyr)
library(gapminder)
library(tidyverse)
library(knitr)
library(recommenderlab)
library(RColorBrewer)

# --- Load Data --- #
regulation_price <- read.csv(file = '../../gen/analysis/input/data_for_barplot.csv')
regulation_price$regulation <- as.factor(regulation_price$regulation)

# Create barplot 
pdf("../../gen/analysis/output/prices_barplot.pdf")
regulation_price %>% 
  ggplot(aes(x=regulation, y=price, fill = regulation)) +
  geom_bar(stat = "identity", position = "dodge2") + 
  xlab("Before or After Regulation") + ylab("Mean Price") + 
  ggtitle("Mean Price before and after regulation") + 
  theme(axis.title.x=element_blank(), axis.text.x=element_blank(), axis.ticks.x=element_blank()) + 
  guides(fill = guide_legend(title = "Regulation")) + 
  scale_fill_discrete(labels = c("Before Regulation", "After Regulation")) + geom_col()
dev.off()
