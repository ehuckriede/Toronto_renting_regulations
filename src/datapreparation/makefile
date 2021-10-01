INPUT = ../../gen/data-preparation/input
OUTPUT = ../../gen/data-preparation/output
DATA = ../../data

all: $(DATA)/listings0820.csv $(DATA)/listings0821.csv $(INPUT)/Merged_data.csv $(INPUT)/Transformed_data.csv $(OUTPUT)/Cleaned_data.csv

$(DATA)/listings0820.csv $(DATA)/listings0821.csv: get_data.R
	R --vanilla < get_data.R

$(INPUT)/Merged_data.csv: $(DATA)/listings0820.csv $(DATA)/listings0821.csv Data_Merging.R
	R --vanilla < Data_Merging.R

$(INPUT)/Transformed_data.csv: $(INPUT)/Merged_data.csv Data_Transformation.R
	R --vanilla < Data_Transformation.R

$(OUTPUT)/Cleaned_data.csv: $(INPUT)/Transformed_data.csv Data_Cleaning.R
	R --vanilla < Data_Cleaning.R
