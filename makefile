all: data-preparation

data-preparation:
	make -C src/datapreparation

clean:
	-rm -r data
	-rm -r gen