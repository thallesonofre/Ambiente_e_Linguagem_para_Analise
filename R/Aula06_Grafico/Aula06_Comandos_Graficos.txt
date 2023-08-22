#pacotes necessários

library(tidyverse)
library(ggplot2)
library(gapminder)



economics
?economics



# Grafico Simples
# x = Data
# y = Desempregrados


economics %>%
  ggplot(aes(x = date, y = unemploy)) +
  geom_line()



# Linha de tendência


economics %>%
  ggplot(aes(x = date, y = unemploy)) +
  geom_line() + 
  geom_smooth()



# Definir intervalos Ini e Fim = FormatoData


economics %>%
  ggplot(aes(x = date, y = unemploy)) +
  geom_line() +
  scale_x_date(limits = c(as.Date("1990-01-01"), as.Date("1999-12-31")))



# Grafico da população do brasil


gapminder %>%
  filter(country == "Brazil") %>%
  ggplot(aes(x = year, y = pop)) +
  geom_line() +
  geom_point()



# Grafico com multiplas linhas


gapminder %>%
  filter(country %in% c("Brazil", "Uruguay", "Argentina")) %>%
  ggplot(aes(x = year, y = pop, color = country)) +
  geom_line() +
  geom_point()
