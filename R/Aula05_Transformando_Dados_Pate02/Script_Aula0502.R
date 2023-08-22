# Filtros de tabela #02

library(tidyverse)



# Conjunto de Dados


data("starwars")
starwars



# Filtro comum, muito repetivo


starwars[starwars$homeworld == "Tatooine",]

starwars[starwars$homeworld == "Tatooine" & !is.na(starwars$homeworld),]



# Filtros Usando tidyverse


starwars %>%
  filter(homeworld == "Tatooine")



# Usando multiplos filtros


starwars %>%
  filter(homeworld == "Tatooine", species == "Droid")



# Filtrando um ou outro


starwars %>%
  filter(homeworld == "Tatooine" | homeworld == "Naboo")



# Filtros dos dados faltantes


starwars %>%
  filter(is.na(homeworld))



# Filtrar varios valores de uma mesma coluna


starwars %>%
  filter(species %in% c("Human", "Droid"))



# Filtro de negação do valor


starwars %>%
  filter(!species %in% c("Human", "Droid"))
