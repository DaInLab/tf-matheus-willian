library(readxl)

df.mortes <- read_excel("./dados/covid_19_bauru_mortes.xlsx", col_types = c("date", "text", "numeric", "date","text","text", "date", "numeric"))

temp.sexo <- df.mortes$sexo[!is.na(df.mortes$sexo)]
pct.sexo = round(unname(table(temp.sexo)) / sum(unname(table(temp.sexo)))*100,0)
pct.sexo = paste0(pct.sexo, "%")

graph.sex <- barplot(table(temp.sexo), main = "Óbitos por gênero",
                     ylab = "Número de Óbitos", ylim = c(0,sum(unname(table(temp.sexo)))),
                     names.arg = c("Feminino", "Masculino"))
text(x = graph.sex, y = table(temp.sexo), label = pct.sexo, pos = 3, cex = 1.25, col = "red")
axis(1, at=graph.sex, labels=table(temp.sexo), tick=F, las=1, line=-6.5, cex.axis=1.25)
