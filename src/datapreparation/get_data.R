# Load Libraries
library(googledrive)
library(readr)

dir.create('../../data')

#listings august 2020
data_id <- "1f3L-KHmC89xcn7LIMpGsfwh8zMu8orPE"
out_file <- "../../data/listings0820.csv"

drive_download(
    as_id(data_id), 
    path = out_file, 
    overwrite = TRUE)

#listings august 2021
data_id2 <- "11Xy7UtyZaYsOfU4xIDeLA_syv1WFeDV4"
out_file2 <- "../../data/listings0821.csv"

drive_download(
    as_id(data_id2), 
    path = out_file2, 
    overwrite = TRUE)