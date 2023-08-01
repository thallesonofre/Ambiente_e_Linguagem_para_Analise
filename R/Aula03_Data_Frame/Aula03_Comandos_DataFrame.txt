# Criando DataFrames

# Vetores - Base Empregados


id = c(1,2,3,4,5)
nome = c("João", "Maria", "Daniel", "Aline", "Mariana")
salario = c(2000, 3000, 4000, 5000, 6000)



# Criando DataFrame


df = data.frame(id, nome, salario)
df



# Filtrando uma linha


df[1,]
df[1:2,]



# Filtrar uma coluna


df[, 2]
df[, 2:3]



# Filtrar uma linha e uma coluna


df[1,3]



# Criar uma nova Coluna (Tempo de empresa) Anos


tempo = c(1, 2, 4.5, 3, 0.5)
df$tempo = tempo
df

df$tempo




# Operando as colunas


sum(df$salario)
mean(df$tempo)
