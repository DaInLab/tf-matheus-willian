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

dados <- df.mortes
tempo <- difftime(as.Date(dados$'data_obito'), as.Date(dados$'inicio_sintoma'), units = "days")

library(ggplot2)
png(filename = "./graficos/tempo_permanência_hospitalar.png", width = 800, height = 600)
ggplot(as.data.frame(table(tempo)), 
       aes(x = tempo, y = Freq),) + 
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) + 
  labs(x = "Dias de internação", y = "Óbitos", fill = "Dias") + 
  ggtitle("Tempo de permanência hospitalar") + theme(legend.position = "none") + 
  geom_bar(stat="identity", position="stack") + geom_col(width=0.8)
dev.off()

