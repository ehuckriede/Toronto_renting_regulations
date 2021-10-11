INPUT = ../../src/input
RESULT = ../../gen/analysis/output


all: plot_prices.pdf 

plot_prices.pdf: figures.R
	mkdir -p ../../gen/analysis/output
	R --vanilla < figures.R
