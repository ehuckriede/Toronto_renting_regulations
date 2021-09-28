# Load Libraries
library(googledrive)
library(readr)

dir.create('data')


#listings august 2020
data_id <- "1f3L-KHmC89xcn7LIMpGsfwh8zMu8orPE"
out_file <- "data/listings0820.csv"

drive_download(
    as_id(data_id), 
    path = out_file, 
    overwrite = TRUE)

#Save to file
listings0820 <- read.csv("data/listings0820.csv")

#reviews august 2020
data_id2 <- "1YR7k9ByGnfFqUPs71nzKoFb06_2uWAAy"
out_file2 <- "data/reviews0820.csv"

drive_download(
    as_id(data_id2), 
    path = out_file2, 
    overwrite = TRUE)

#Save to file
reviews0820 <- read.csv("data/reviews0820.csv")

#listings september 2020
data_id3 <- "1M5vfOneYxHe337X6V8xHmoYUXxduN4Gt"
out_file3 <- "data/listings0920.csv"

drive_download(
    as_id(data_id3), 
    path = out_file3, 
    overwrite = TRUE)

#Save to file
listings0920 <- read.csv("data/listings0920.csv")

#reviews september 2020
data_id4 <- "15m3cxJlZgwHlcmwdQYRF_CzGBJ3j94GX"
out_file4 <- "data/reviews0920.csv"

drive_download(
    as_id(data_id4), 
    path = out_file4, 
    overwrite = TRUE)

#Save to file
reviews0920 <- read.csv("data/reviews0920.csv")


#listings august 2021
data_id5 <- "11Xy7UtyZaYsOfU4xIDeLA_syv1WFeDV4"
out_file5 <- "data/listings0821.csv"

drive_download(
    as_id(data_id5), 
    path = out_file5, 
    overwrite = TRUE)

#Save to file
listings0821 <- read.csv("data/listings0821.csv")

#reviews august 2021
data_id6 <- "1M0bRrKVqg9YA3gee5SQwVPjduXNYYbYQ"
out_file6 <- "data/reviews0821.csv"

drive_download(
    as_id(data_id6), 
    path = out_file6, 
    overwrite = TRUE)

#Save to file
reviews0821 <- read.csv("data/reviews0821.csv") # --> move these thigns to the input block of your next pipeline script


