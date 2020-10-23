#Rule for making the output file
hw5.html: Figures/fig1.png R/HW5.Rmd raw_data/NORS.xlsx Install
	cd R && Rscript -e "rmarkdown::render('HW5.Rmd', output_file = '../HW5.html')"

#Rule for installing programs
Install: 
	chmod +x R/Install.R && R/Install.R

#Rule for making fig1
Figures/fig1.png: R/Fig1.R raw_data/NORS.xlsx 
	chmod +x R/Fig1.R && \
	R/Fig1.R

#Rule for "help"
.PHONY: help
help:
	@echo "hw5.html : Generate final analysis report"
	@echo "Figures/fig1.png : Generate figure 1"
	@echo "Figures/fig2.png : Generate figure 2"