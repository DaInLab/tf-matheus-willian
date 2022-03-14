library(readxl)
df.mortes <- read_excel("./dados/covid_19_bauru_mortes.xlsx", 
                        col_types = c("date", "text", "numeric", "date","text","text", "date", "numeric"))

png(filename = "./graficos/obitos_tipo_hospitalizacao.png", width = 800, height = 600)
temp.hosp <- df.mortes$tipo_hosp[!is.na(df.mortes$tipo_hosp)]
pct.hosp = round(unname(table(temp.hosp)) / sum(unname(table(temp.hosp)))*100,0)
pct.hosp = paste0(pct.hosp, "%")
graph.hosp <- barplot(table(temp.hosp), main = "Óbitos por tipo de hospitalização", ylab = "Número de Óbitos", ylim = c(0,sum(unname(table(temp.hosp)))), names.arg = c("Privado", "Público")) 
text(x = graph.hosp, y = table(temp.hosp), label = pct.hosp, pos = 3, cex = 1.25, col = "red")
axis(1, at=graph.hosp, labels=table(temp.hosp), tick=F, las=1, line=-4.5, cex.axis=1.25)
dev.off()
