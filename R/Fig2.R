#! /usr/bin/Rscript
#library packages
library(openxlsx)
library(haven)
library(gtools)

my_data <- read.xlsx(xlsxFile='raw_data/NORS.xlsx')



# plot of year of outbreak
png("Figures/fig2.png")
plot(y = my_data$Year, x = my_data$Illnesses,
     xlab = "Year", ylab = "Illnesses")
dev.off()

