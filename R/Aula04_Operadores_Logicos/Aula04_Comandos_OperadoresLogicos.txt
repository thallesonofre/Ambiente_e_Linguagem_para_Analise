# Filtros Usando Operadores Lógicos

# Vetores - Base Empregados


id = c(1,2,3,4,5)
nome = c("João", "Maria", "Daniel", "Aline", "Mariana")
salario = c(2000, 3000, 4000, 5000, 6000)



# Criando Data-Frame


df = data.frame(id, nome, salario)
df



# Explicando operadores


1 == 1
1 != 1
1 > 2
2 > 1
3 >= 3
3 >= 4




# Aplicando operadores em vetores


salario
salario > 4000




# Aplicando operadores em Data-Frame


df[df$salario > 4000,]




# Conjunto de Dados


data("mtcars")
mtcars
?mtcars




# Registros com + de 4 cc (cyl)


mtcars[mtcars$cyl > 4,]




# Registros com caixa de 4 machas (gear)


mtcars[mtcars$gear == 4,]




# carros com menos de 3mil kg (wt)


mtcars[mtcars$wt < 3, ]
