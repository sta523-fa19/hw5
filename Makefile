hw5.html: hw5.Rmd
	Rscript -e "library(rmarkdown); render('hw5.Rmd')"

.PHONY: clean_html clean_data
clean_html:
	rm hw5.html
	
clean_data:
	rm -rf data/