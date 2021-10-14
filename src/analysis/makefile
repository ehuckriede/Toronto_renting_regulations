INPUT = ../../src/input
RESULT = ../../gen/analysis/output


all: plot_prices.pdf plot_prices_percentual.pdf

plot_prices.pdf: figures.R
	R --vanilla < figures.R

linear_regression.txt: Analysis_data.R
	R --vanilla < Analysis_data.R

plot_prices_percentual.pdf: Percentual_Price_Plot.R
	R --vanilla < Percentual_Price_Plot.R