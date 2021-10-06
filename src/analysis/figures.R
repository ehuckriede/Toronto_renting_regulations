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

roomtype_price <- all_data %>%
  group_by(room_type, regulation) %>%
  summarise(price = mean(price))

roomtype_price %>%
  ggplot(aes(x = room_type, y = price)) +
  geom_point()

all_data %>%
  group_by(room_type) %>%
  summarise(price = mean(price)) %>%
  ungroup() %>%
  pivot_wider(names_from = regulation, values_from = price) %>%
  ggplot(aes(x = ))

  geom_bar()

treat_table <- paidsearch %>%
  group_by(treatment_period, treatment) %>%
  summarise(revenue = mean(revenue)) %>%
  ungroup()

treat_table %>%
  pivot_wider(names_from = treatment, values_from = revenue) %>%
  mutate_all(funs(. - lag(.))) %>%
  mutate(did_simple = "1" - "0") %>%
  na.omit() %>%
  select(did_simple)


  
ggplot(aes(x = room_type, y = price, fill = regulation)) +
  geom_bar() 

movies %>%    
  group_by(genre, vote) %>%
  count(vote) %>%
  ggplot(aes(x = genre, y = n, fill = vote)) +
  geom_bar(position = "fill", stat = "identity") +