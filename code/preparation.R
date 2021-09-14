# Load Libraries
library(readr)
library(jsonlite)
library(knitr)
library(dplyr)
library(tidyverse)

# Load Data
listings0820 <- read.csv("data/listings0820.csv")
reviews0820 <- read.csv("data/reviews0820.csv")
listings0920 <- read.csv("data/listings0920.csv")
reviews0920 <- read.csv("data/reviews0920.csv")
listings0821 <- read.csv("data/listings0821.csv")
reviews0821 <- read.csv("data/reviews0821.csv")