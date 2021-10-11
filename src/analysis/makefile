INPUT = ../../src/input
RESULT = ../../gen/analysis/output


all: plot_prices.pdf plot_prices_percentual.pdf

plot_prices.pdf: figures.R
	mkdir -p ../../gen/analysis/output
	R --vanilla < figures.R

plot_prices_percentual.pdf: Percentual_Price_Plot.R
	R --vanilla < Percentual_Price_Plot.R