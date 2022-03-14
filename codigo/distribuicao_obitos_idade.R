library(readxl)
library(dplyr)

planilha <- read_excel("./dados/covid_19_bauru_mortes.xlsx")
dados <- planilha$'idade'

png(filename = "./graficos/histograma_obitos_por_idade.png", width = 800, height = 600)
hist(dados, main="Óbitos por idade", xlab="Idades", ylab="Frequência")
dev.off()

tabela <- data.frame(t(table(dados)))[,-1]
tabela$dados <- as.numeric(levels(tabela$dados))
tabela <- tabela %>% 
  mutate(Fr = 100*Freq/sum(Freq),
         Fac = cumsum(Freq),
         Xi.Fi = dados*Freq)
tabela
