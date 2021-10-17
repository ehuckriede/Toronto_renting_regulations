INPUT = ../../gen/analysis/input
RESULT = ../../gen/analysis/output


all: $(RESULT)/linear_regression.txt $(INPUT)/data_for_plot_neighborhoods.csv  $(INPUT)/data_for_roomtype_plot.csv $(INPUT)/data_for_barplot.csv $(RESULT)/neighborhoods_prices_plot.pdf $(RESULT)/roomtype_prices_plot.pdf $(RESULT)/prices_barplot.pdf 

$(RESULT)/linear_regression.txt: linear_model.R
	R --vanilla < linear_model.R

$(INPUT)/data_for_plot_neighborhoods.csv: get_data_for_neighborhood_plot.R
	R --vanilla < get_data_for_neighborhood_plot.R

$(INPUT)/data_for_roomtype_plot.csv: get_data_for_roomtype_plot.R
	R --vanilla < get_data_for_roomtype_plot.R

$(INPUT)/data_for_barplot.csv: get_data_for_barplot.R
	R --vanilla < get_data_for_barplot.R

$(RESULT)/neighborhoods_prices_plot.pdf: create_neighborhood_plot.R
	R --vanilla < create_neighborhood_plot.R

$(RESULT)/roomtype_prices_plot.pdf: create_roomtype_plot.R
	R --vanilla < create_roomtype_plot.R

$(RESULT)/prices_barplot.pdf: create_prices_barplot.R
	R --vanilla < create_prices_barplot.R
