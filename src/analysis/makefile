INPUT = ../../gen/analysis/input
RESULT = ../../gen/analysis/output


all: $(RESULT)/linear_regression.txt $(INPUT)/data_for_full_plot.csv $(INPUT)/data_for_percentual_plot.csv $(INPUT)/data_for_barplot.csv $(RESULT)/full_prices_plot.pdf $(RESULT)/percentual_prices_plot.pdf $(RESULT)/prices_barplot.pdf 

$(RESULT)/linear_regression.txt: linear_model.R
	R --vanilla < linear_model.R

$(INPUT)/data_for_full_plot.csv: get_data_for_full_plot.R
	R --vanilla < get_data_for_full_plot.R

$(INPUT)/data_for_percentual_plot.csv: get_data_for_percentual_plot.R
	R --vanilla < get_data_for_percentual_plot.R

$(INPUT)/data_for_barplot.csv: get_data_for_barplot.R
	R --vanilla < get_data_for_barplot.R

$(RESULT)/full_prices_plot.pdf: create_full_plot.R
	R --vanilla < create_full_plot.R

$(RESULT)/percentual_prices_plot.pdf: create_percentual_plot.R
	R --vanilla < create_percentual_plot.R

$(RESULT)/prices_barplot.pdf: create_prices_barplot.R
	R --vanilla < create_prices_barplot.R