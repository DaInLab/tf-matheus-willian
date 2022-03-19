---
title: "Trabalho final - IAED 2021"
author: "Matheus Willian Polato - RA 181024462"
date: "2021/2022"
output:
  pdf_document: default
  html_document:
    df_print: paged
  word_document: default
lang: pt-br
---

<style>
body {
text-align: justify}
</style>



# Introdução

Este documento refere-se ao trabalho final da disciplina de Introdução à Análise Exploratória de Dados, ministrada pelo professor João Pedro Albino, no ano de 2021/2022, pela Faculdade de Ciências - UNESP Câmpus de Bauru.
O projeto consiste em realizar uma Análise Exploratória de Dados em relação a pandemia causada pelo Coronavírus (COVID-19) e como está impactando a vida das pessoas na cidade de Bauru.
As análises realizadas mostram a distribuição de mortes de acordo com a idade dos pacientes, gênero, quais as características das comorbidades dos óbitos, a variação periódica de tais óbitos, tipos e tempo de permanência hospitalar dos pacientes e a relação entre óbitos ocorridos e a vacinação dos falecidos.


# Análise Exploratória dos Dados

## Óbitos entre gêneros

Foi realizada uma análise para verificar qual a taxa de óbitos entre os gêneros. O gráfico a seguir mostra o que foi obtido.

![](tf-matheus-willian_files/figure-latex/unnamed-chunk-1-1.pdf)<!-- --> 

Pode-se verificar que a maior parte dos óbitos são do gênero masculino, com 57%, seguido do gênero feminino, com 43%.

## Distribuição dos óbitos de acordo com a idade dos pacientes

Foi realizado uma análise para verificar qual a distribuição dos óbitos de acordo com a idade dos pacientes.
![Histograma de distribuição dos óbitos de acordo com a idade dos pacientes](../graficos/histograma_obitos_por_idade.png)

Pode-se constatar no histograma que a maior frequência de mortes está concentrada entre as idades de 50 a 90 anos, seguida pela idade de 40 a 50. Isso mostra que o coronavírus tem mais impacto em pessoas com idades mais avançadas.

## Características das principais comorbidades dos óbitos

Foi realizado uma análise para verificar quais as características das principais comorbidades dos óbitos.
A tabela e o gráfico a seguir mostram quais as comorbidades que mais sofreram óbitos.


```
##                Comorbidades Freq
## 140             hipertensão   80
## 15              cardiopatia   69
## 50                 diabetes   61
## 86   diabetes e hipertensão   55
## 183               obesidade   50
## 166 hipertensão e obesidade   41
```

![Características das principais comorbidades dos óbitos](../graficos/caracteristicas_principais_comorbidades_obitos.png)

Pode-se constatar que hipertensão é a comorbidade mais atingida pelo coronavírus, com um total de 80 óbitos. É possível verificar também que a hipertensão, em conjunto com outra comorbidade, também está entre as 6 comorbidades mais atingidas. Ocorreram 55 óbitos de pessoas que possuíam diabetes e hipertensão e 41 óbitos de pessoas que possuíam hipertensão e obesidade.


## Variação periódica dos óbitos

Foi realizado uma análise para verificar a variação periódica dos óbitos. O gráfico mostra o que foi obtido.

![](tf-matheus-willian_files/figure-latex/unnamed-chunk-3-1.pdf)<!-- --> 

É possível perceber que os óbitos não ficaram estáveis em nenhum momento, a linha está em uma constante crescente, porém menos que no período antes de 2021. Isso mostra que a vacinação é sim eficaz, mas ainda é necessário uma atenção por parte da população, para cada um fazer sua parte, utilizar máscara e evitar aglomerações.

## Tipos e tempo de permanência hospitalar

### Tipo de permanência hospitalar

Foi realizado uma análise para verificar a quantidade de cada tipo de hospitalização. A tabela a seguir mostra os dados obtidos.

![](tf-matheus-willian_files/figure-latex/unnamed-chunk-4-1.pdf)<!-- --> 

Percebe-se que a maioria das hospitalizações foram em hospitais públicos, o que explica o rápido esgotamento de leitos nas unidades públicas de saúde.

### Tempo de permanência hospitalar

O próximo gráfico mostra o tempo de permanência hospitalar até o óbito.

![](tf-matheus-willian_files/figure-latex/unnamed-chunk-5-1.pdf)<!-- --> 

É possível perceber que a maior parte dos pacientes que vieram a óbito ficaram internados aproximadamente entre 3 e 36 dias.

## Relação entre óbitos ocorridos e a vacinação dos falecidos

Foi realizado uma análise para verificar a relação entre os óbitos e a vacinação dos falecidos. A tabela a seguir mostra os dados obtidos.


```
##   Doses Freq
## 1     0 1020
## 2     1    5
## 3     2   66
## 4     3   51
```

Pode-se constatar que a maior frequência de óbitos foram das pessoas que ainda não haviam tomado nenhuma dose da vacina, com um total de 1020 pessoas. A segunda maior frequência é de pessoas que tomaram 2 doses, com um total de 66. Pessoas que tomaram apenas uma dose da vacina têm um total de 5. Uma observação para isso é que, entre essas pessoas, pode conter aquelas que tomaram a dose única, ou seja, estavam totalmente imunizadas.

# Conclusão

Com este trabalho foi possível analisar alguns dados referentes aos óbitos por conta da COVID-19 na cidade de Bauru. Pode-se concluir que o vírus afetou muita gente, não somente bauruenses. É necessário continuar seguindo os protocolos de segurança, principalmente as pessoas que possuem algum tipo de comorbidade. Também é necessário se vacinar, pois como mostram as análises, o maior índice de óbitos são daqueles que não se vacinaram.
