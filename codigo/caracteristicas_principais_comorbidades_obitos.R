library(readxl)
library(dplyr)

planilha <- read_excel("./dados/covid_19_bauru_mortes.xlsx")
dados <- planilha$'comorbidade'

dataFrame <- data.frame(table(dados))
freq <- dataFrame$Freq

sortedDataFrame <- dataFrame[order(-freq),]
firstSixRows <- head(sortedDataFrame)

diseaseNames <- firstSixRows$'dados'

png(filename = "./graficos/caracteristicas_principais_comorbidades_obitos.png", width = 800, height = 600)
barplot(firstSixRows$Freq, main="Características das principais comorbidades dos óbitos", xlab="Comorbidades", ylab="Quantidade óbitos", names.arg = diseaseNames, ylim=c(0, 100), cex.names = 0.8, xaxs = "i")
dev.off()

firstSixRows
