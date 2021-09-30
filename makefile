all: data/listings0820.csv data/listings0821.csv gen/data-preparation/input/Merged_data.csv gen/data-preparation/input/Transformed_data.csv gen/data-preparation/output/Cleaned_data.csv

data/listings0820.csv data/listings0821.csv: src/datapreparation/get_data.R
	R --vanilla < src/datapreparation/get_data.R

gen/data-preparation/input/Merged_data.csv: data/listings0820.csv data/listings0821.csv src/datapreparation/Data_Merging.R
	R --vanilla < src/datapreparation/Data_Merging.R

gen/data-preparation/input/Transformed_data.csv: gen/data-preparation/input/Merged_data.csv src/datapreparation/Data_Transformation.R
	R --vanilla < src/datapreparation/Data_Transformation.R

gen/data-preparation/output/Cleaned_data.csv: gen/data-preparation/input/Transformed_data.csv src/datapreparation/Data_Cleaning.R
	R --vanilla < src/datapreparation/Data_Cleaning.R
