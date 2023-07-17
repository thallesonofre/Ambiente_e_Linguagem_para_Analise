## Pacotes Librares ##
library(rvest)
library(quantmod)
library(dplyr)

## Site na variavel ##
w_site <- "https://en.wikipedia.org/wiki/List_of_Academy_Award-winning_films#Superlatives"

## Lendo a varieavel w_site em tabela na variavel t_oscar ##
t_oscar <- read_html(w_site) %>%
  html_node( xpath = '//*[@id="mw-content-text"]/div[1]/table') %>%
  html_table() %>%
  select(title = Film, Year)

## Exportar a planilha pronta ##

write.csv2(t_oscar, "premios_oscar.csv", sep = ';')
