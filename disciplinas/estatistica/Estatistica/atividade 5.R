source("C:/Users/paula/OneDrive/Documentos/atividade_3.R")

vetor_temperatura <- c(98.60, 98.60, 98.00, 98.00, 99.00, 98.40, 98.40, 98.40, 98.40, 98.60, 98.60, 98.80, 98.60, 97.00,
                       97.00, 98.80, 97.60, 97.70, 98.80, 98.00, 98.00, 98.30, 98.50, 97.30, 98.70, 97.40, 98.90, 98.60, 
                       99.50, 97.50, 97.30, 97.60, 88.20, 99.60, 98.70, 99.40, 98.20, 98.00, 98.60, 98.60, 97.20, 98.40,
                       98.60, 98.20, 98.00, 97.80, 98.00, 98.40, 98.60, 98.60, 97.80, 99.00, 96.50, 97.60, 98.00, 96.90, 
                       97.60, 97.10, 97.90, 98.40, 97.30, 98.00, 97.50, 97.60, 98.20, 98.50, 98.80, 98.70, 97.80, 98.00,
                       97.10, 97.40, 99.40, 98.40, 98.60, 98.40, 98.50, 98.60, 98.30, 98.70, 98.80, 99.10, 98.60, 97.90,
                       98.80, 98.00, 98.70, 98.50, 98.90, 98.40, 98.60, 97.10, 97.90, 98.80, 98.70, 97.60, 98.20, 99.20,
                       97.80, 98.00, 98.40, 97.80, 98.40, 97.40, 98.00, 97.00)
lista_ordenada = sort(vetor_temperatura)

# Usando o Tipo 7

# Quartil de ordem 1
quantile(vetor_temperatura, type = 7)[[2]]

# Quartil de ordem 2
quantile(vetor_temperatura, type = 7)[[3]]

# Quartil de ordem 3
quantile(vetor_temperatura, type = 7)[[4]]

# Calculando

# Quartil de ordem 1
# 1 - Passo ordenar a lista
# Descobrir mediana

md <- (lista_ordenada[53] + lista_ordenada[54])/2 
# 98.4

md1 <- c(88.2, 96.5, 96.9, 97.0, 97.0, 97.0, 97.1, 97.1, 97.1, 97.2, 97.3, 97.3, 97.3, 97.4, 97.4, 97.4, 97.5, 97.5, 97.6, 97.6, 97.6, 97.6, 97.6, 97.6, 97.7, 97.8, 97.8, 97.8, 97.8, 97.8)

mdi1 <- (md1[26] + md1[27])/2
# 97.8

md2 <- c(88.2, 96.5, 96.9, 97.0, 97.0, 97.0, 97.1, 97.1, 97.1, 97.2, 97.3, 97.3, 97.3, 97.4, 97.4, 97.4, 97.5, 97.5, 97.6, 97.6, 97.6, 97.6, 97.6, 97.6, 97.7, 97.8, 97.8, 97.8, 97.8, 97.8, )

mdi2 <- (md2[32] + md2[33])/2

q1 <-( mdi1 + mdi2)/2

# Q2 
q2 <- md


# Q3
lista_mediana_final_1 <- c(97.8, 97.8, 97.8, 97.9, 97.9, 97.9, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.2, 98.2, 98.2, 98.2, 98.3, 98.3, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.5, 98.5, 98.5, 98.5, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.7, 98.7, 98.7, 98.7, 98.7, 98.7, 98.8, 98.8, 98.8, 98.8, 98.8, 98.8, 98.8, 98.9, 98.9, 99.0, 99.0, 99.1, 99.2,
               99.4, 99.4, 99.5, 99.6)

lista_mediana_final_2 <-  c(97.8, 97.8, 97.9, 97.9, 97.9, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.0, 98.2, 98.2, 98.2, 98.2, 98.3, 98.3, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.4, 98.5, 98.5, 98.5, 98.5, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.6, 98.7, 98.7, 98.7, 98.7, 98.7, 98.7, 98.8, 98.8, 98.8, 98.8, 98.8, 98.8, 98.8, 98.9, 98.9, 99.0, 99.0, 99.1, 99.2,
               99.4, 99.4, 99.5, 99.6)

mediana_lista1 <- lista_mediana_final_1[40]
mediana_lista2 <-( lista_mediana_final_2[39] + lista_mediana_final_2[40])/2

q3 <- (mediana_lista1 + mediana_lista2)/2




#Letra B

# Ordem 1
# Procurar valor igual ou imediatamente superior na coluna de frequencia acumulada
encontra_classe_quartil <- 0.25*106

# A classe do quartil de ordem 1 é a 4 classe

limite_inferior_da_classe <- 94
frequencia_acumulada_classe_anterior <- 16
frequencia_absoluta_classe_quartil <- 52
amplitude_da_classe <- 2

q1 <- limite_inferior_da_classe +( (encontra_classe_quartil - frequencia_acumulada_classe_anterior)/frequencia_absoluta_classe_quartil) * amplitude_da_classe
# Q1 = 94.40

# Ordem 3
encontra_classe_quartil_ordem_3 <- 0.75*106
# A classe do quartil de ordem 1 é a 5 classe

limite_inferior_da_classe_ordem_3 <- 96
frequencia_acumulada_classe_anterior_ordem_3 <- 68
frequencia_absoluta_classe_quartil_ordem_3 <- 36

q3 <- limite_inferior_da_classe_ordem_3 +( (encontra_classe_quartil_ordem_3 - frequencia_acumulada_classe_anterior_ordem_3)/frequencia_absoluta_classe_quartil_ordem_3) * amplitude_da_classe
# Q3 = 96.44



# Letra c
q1 <- quantile(lista_ordenada, 0.25)[[1]]
q3 <-  quantile(lista_ordenada, 0.75)[[1]] 
li <- q1 - 0.26*(q3 - a1)
ls <- q3 - 0.26*(q3 - a1)
md <- median(lista_ordenada)
me <- mean(lista_ordenada)


boxplot(lista_ordenada)


