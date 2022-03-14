library(readxl)
df.mortes <- read_excel("./dados/covid_19_bauru_mortes.xlsx", 
                        col_types = c("date", "text", "numeric", "date","text","text", "date", "numeric"))

png(filename = "./graficos/variacao_periodica_obitos.png", width = 800, height = 600)
plot(df.mortes$data_obito, main = "Variação Periódica de óbitos", 
     xlab = "Óbitos ocorridos", ylab = "Período/datas")
dev.off()
