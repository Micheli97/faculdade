# Matrizes

# São estruturas bidimensionais constituídos por linhas e colunas. 
# São formados por apenas um tipo de dados, da mesma forma que ocorre com os vetores.

# Podem ser construídas utilizando as funções matrix(), rbind(), cbind(), e as.matrix().

# matrix() -> específica para criar matrizes, pois possui alguns atributos que fornece
# que permitem uma maior manipulação de dados.

# rbind() e cbind() -> permite criar matrizes mas seu principal objetivo é fazer a união
# de linhas e colunas. Sendo assim, antes de executá-las teremos que criar vetores para 
# pode fazer a união. 

# as.matrix() -> transforma um objeto em matriz.


# Exemplos

# Criando matrizes usando os métodos

# Método matrix()
vetor <- 1:20
matriz_1 <-  matrix(vetor, 4, 5)
print(matriz_1)

matriz_2 <- matrix(data = 1:10, nrow = 5, ncol = 2) 
print(matriz_2)
matriz_3 <- matrix(data = 1:9, nrow = 5, ncol = 2, byrow = TRUE)
print(matriz_3)

# Método cbind e rbind()
vetor_1 <- c(1, 3, 5, 7) # criando vetor_1
vetor_2 <- c(9,11,13,15,) # criando vetor_2
matriz_4 <- rbind(vetor_1, vetor_2)
print(matriz_4)
  
# Método as.matrix()
matriz_6 <- as.matrix(vetor_1)
print(matriz_6)

matriz_7 <- as.matrix(1:5)
print(matriz_7)

matriz_8 <- as.matrix(c(1,2,63,8,96))
print(matriz_8)

matriz_9 <- as.matrix(letters[1:10])
print(matriz_8)
  

# Acessando elementos de matrizes

print(matriz_8[1,1])
print(matriz_7[2,])
print(matriz_3[,2])
print(matriz_3[3:4,])


# Operacoes com matrizes

# produto dos elementos de matrizes
print(matriz_2 * matriz_3)

# subtracao de valores de matrizes
print(matriz_2[3,2] - matriz_3[4,1])

# alterando elemento
print(matriz_2[1,2] <- 11)

# produto matricial
print(matriz_2 %*% matriz_4)

# matriz transposta
print(t(matriz_3))

# determinante da matriz
print(det(matrix(c(1:4), ncol = 2)))

# dimensao da matriz
print(dim(matriz_2))

# numero de colunas
print(ncol(matriz_2))

# numero de linhas 
print(nrow(matriz_2))

# diagonal
print(diag(matriz_3))

# testa se o objeto é uma matriz
print(is.matrix(matriz_1))

# descontroi uma matriz transformando-a em vetor


# Nomeando matrizes   
dimnames(matriz_2) <- list(c("Linha_1", "Linha_2", "Linha_3", "Linha_4", "Linha_5"),
                           c("Coluna_1", "Coluna_2"))
print(matriz_2)
  
# nomeando linhas
rownames(matriz_3) <- paste("Linha", 1:nrow(matriz_3), sep = "_") 

# nomeando colunas
colnames(matriz_3) <- paste("Coluna", 1:ncol(matriz_3), sep = "_")
  
  
