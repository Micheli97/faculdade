source("C:/Users/paula/OneDrive/Documentos/atividade_3.R")


# 1 questão
lista_temperatura_ordenada <- sort(temperaturas)

varianciaFunction <- function(x){
  v = sum((x-mean(x))^2)/length(x)
  return(v)
}

variancia <- varianciaFunction(lista_temperatura_ordenada)

desvio_padrao_lista <- sqrt(variancia)

media_lista_temperatura <- mean(lista_temperatura_ordenada)

coeficiente <- (desvio_padrao/media_lista_temperatura)*100


# 2 questão
z <- data.frame("Frequencia absoluta" = tabela_frequencia[2], "Media classses" = tabela_frequencia[8], "XF" =tabela_frequencia[2] * tabela_frequencia[8], 
                "X^2F" = tabela_frequencia[8] ^ 2 * tabela_frequencia[2] )
somatorio <- sum(z[3])
media <- somatorio / 106

some_4_coluna <- sum(z[4])

variancia <- (1/105) * (some_4_coluna -somatorio^2 / 106)

desvio_padrao <- sqrt(variancia)

mediana <- 94 + ((53 + 16)/52) * 2



# 3 questão

assimetria <- 3 * (media - mediana) / desvio_padrao


p10c <-( 10/100) * 106
p25c <-( 25/100) * 106
p75c <- ( 75/100) * 106
p90c <-  ( 90/100) * 106

p10 <- 92 + (10.6 - 2) / 14 * 2
p25 <- 94 + (26.5 - 16) /52 * 2
p75 <- 96 + (79.5 - 68)/ 36 * 2 
p90 <- 96 + (95.4 - 68)/ 36 * 2 

curtose <-( p75 - p25 )/( 2*(p90 - p10))

# R. Assimetrica negativa e leptocurtica
