library(readxl)

options(max.print=1200)

planilha <- read_excel("./dados/covid_19_bauru_mortes.xlsx")
Doses <- planilha$'doses_vacina'
valorMinimo  <- min(Doses)
valorMaximo  <- max(Doses)

as.data.frame(table(Doses))
