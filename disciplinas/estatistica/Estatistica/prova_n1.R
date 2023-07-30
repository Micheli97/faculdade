require(moments)

# 1 questao
# Formula x = (1 * B1+2 * B2 + 3 X B3 + 4 * B4)/ 10
# Tabela Sistema Operacional 

b1 <- c(7.7, 10.0,9.2,8.0,5.7,2.0,9.6,9.1,8.0,9.2,10.0,7.7,10.0,10.0,5.2)
b2 <- c(6.5,7.5,6.5,5.0,4.5,3.0,8.5,5.0,8.0,9.5,10.0,5.0,9.0,9.0,5.0)
b3 <- c(5.0,7.0,5.0,4.5,4.0,4.5,6.0,5.5,5.0,8.5,7.0,7.0,7.0,7.0,5.0)
b4 <- c(4.0, 7.0,7.0,6.0,6.0,0.0,7.0,6.0,6.5,7.5,7.5,7.5,6.5,6.5,6.0)

sistema_operacional <- data.frame( "B1"= b1, "B2"=b2, "B3"=b3, "B4"=b4)

s_o <- c(7.7, 10.0,9.2,8.0,5.7,2.0,9.6,9.1,8.0,9.2,10.0,7.7,10.0,10.0,5.2,6.5,7.5,
         6.5,5.0,4.5,3.0,8.5,5.0,8.0,9.5,10.0,5.0,9.0,9.0,5.0,5.0,7.0,5.0,4.5,4.0,4.5,6.0,5.5,5.0,8.5,7.0,7.0,7.0,7.0,5.0,
         4.0, 7.0,7.0,6.0,6.0,0.0,7.0,6.0,6.5,7.5,7.5,7.5,6.5,6.5,6.0)

media_final_so <- c()

for( i in 1:15){
  linha = i;
  x <- (1 * sistema_operacional[linha,1] +2 * sistema_operacional[linha,2] + 3 * sistema_operacional[linha,3] + 4 * sistema_operacional[linha,4])/ 10
  media_final_so[linha] <- x

}

print(media_final_so)

b1_mat <- c(2.0,7.2,2.0,4.3,2.0,0.0,4.6,2.5,3.0,6.5,7.3,4.3,8.6,10.0,1.0)
b2_mat <- c(3.3,10.0,7.3,3.7,4.0,1.0,5.8,3.2,4.9,10.0,9.1,7.6,5.4,10.0,1.4)
b3_mat <- c(4.4,9.5,9.0,4.0,5.0,0.0,5.8,3.2,3.5,6.5,5.2,4.0,6.3,10.0,4.6)
b4_mat <- c(3.0,7.0,7.5,9.1,3.0,0.0,6.5,3.0,3.0,8.0,9.0,9.0,7.0,8.0,4.0)

matematica <- data.frame( "B1"= b1_mat, "B2"=b2_mat, "B3"=b3_mat, "B4"=b4_mat)
media_final_mat <- c()

for( i in 1:15){
  linha = i;
  x <- (1 * matematica[linha,1] +2 * matematica[linha,2] + 3 * matematica[linha,3] + 4 * matematica[linha,4])/ 10
  media_final_mat[linha] <- x
  
}

print(media_final_mat)


b1_fisica <- c(5.0,10.0,5.0,5.5,2.0,0.0,5.5,4.5,7.5,8.0,8.5,10.0,9.0,9.0,3.0)
b2_fisica <- c(6.0,8.0,9.0,7.0,6.0,6.0,6.0,6.0,6.0,6.5,6.0,6.0,7.0,7.5,7.0)
b3_fisica <- c(6.5,10.0,9.0,8.5,5.5,4.0,9.0,6.5,3.0,9.5,10.0,8.5,10.0,10.0,4.0)
b4_fisica <- c(4.0,10.0,8.0,5.0,0.0,0.0,7.0,2.0,2.0,6.0,9.0,8.0,7.0,8.0,2.0)

fisica <- data.frame( "B1"= b1_fisica, "B2"=b2_fisica, "B3"= b3_fisica, "B4"=b4_fisica)
media_final_fisica <- c()

for( i in 1:15){
  linha = i;
  x <- (1 * fisica[linha,1] +2 * fisica[linha,2] + 3 * fisica[linha,3] + 4 * fisica[linha,4])/ 10
  media_final_fisica[linha] <- x
  
}

print(media_final_fisica)


# MEDIA FINAL POR DISCIPLINA
media_final <- data.frame("Física" = media_final_fisica, "Matematica" = media_final_mat, "Sistema Operacional" = media_final_so)


# MEDIA
sum_fisica <- sum(media_final_fisica)
sum_mat <- sum(media_final_mat)
sum_so <- sum(media_final_so)

media_fisica <- sum_fisica / 15
media_mat <- sum_mat / 15 
media_so <- sum_so / 15

media_geral_disciplina <- (media_fisica + media_mat + media_so) / 3

median(media_final_so)

# Se a media for da disciplina de SO entao a resposta e 6.36 e a mediana e 6.52


# 2 questao
ordem_1 <- quantile(media_final_so, type = 7)

# 0%   25%   50%   75%  100% 
# 2.150 5.485 6.520 7.450 8.370 

# Reposta 5.49 e 7.45


# 3 questao
boxplot(media_final_so)

# 4 questao

# Variancia
vari <- function(x){
  v = sum((x-mean(x))^2)/length(x)
  return(v)
}

media_so <- mean(media_final_so)

variancia <- vari(x = media_final_so)
desvio_padrao <- sqrt(variancia)


coeficiente <- (desvio_padrao/media_so)*100


#05 questao


result <- mean(media_final_so) - 1 * (desvio_padrao) #4.842339 8
result2 <-   mean(media_final_so) + 1 * (desvio_padrao) # 7.869661 17




#Distibuicao de frequencia
numero_de_classes <- sqrt(length(media_final_so))
print(media_final_so)

# Descobrindo a amplitude
# Verificando o maior e menor valor do vetor
valor_max <- max(media_final_so)
valor_min <- min(media_final_so)

# Ou podemos usar o método summury
summary(media_final_so)

# Calculando amplitude total
amplitude_total <- max(media_final_so) -  min(media_final_so)

# Calculando o numero de classes usando a regra de Stuges
# k = 1 + 3.3 * log n 

quantidade_de_notas <- length(media_final_so)
numero_classes <- 1 + 3.3 * log10(quantidade_de_notas)
total_classes <- 4 # valor arredondado de numero de classes
# Numero de classes sera 4

# Calculando a amplitude das classes
amplitude_do_intervalo_das_classes <- amplitude_total / total_classes
amplitudes_classes <- 2

# Definindo as classes
classes <- c("2.15 - 4.15", "4.15 - 6.15", "6.15 - 8.15", "8.15 - 10.15")

frequencia_absoluta <- c(1, 5, 8, 1)
frequencia_absoluta_porcentagem <- (frequencia_absoluta/quantidade_de_notas)* 100

frequencia_acumulada <- cumsum(frequencia_absoluta)

frequencia_relativa <- frequencia_absoluta / quantidade_de_notas
frequencia_relativa_porcentagem <- frequencia_relativa*100

media_classes<- c(3.15, 5.15, 7.15, 9.15)

distribuicao_frequencia <- data.frame("Classes" = classes, "Frequencia absoluta" = frequencia_absoluta, "Frequencia A%" = frequencia_absoluta_porcentagem,
                                      "Frequencia acumulada" = frequencia_acumulada, "Frequencia relativa"= frequencia_relativa, "Frequencia R%"=frequencia_relativa_porcentagem,
                                      "Media classes" = media_classes)

# Calculando a moda
# Lm -  

d1 <- 8 - 5
d2 <-8 - 1
hm <- 2

moda <- 6.15 + (d1 / (d1+d2)) * hm
# moda 7.15



media <- sum(media_final_so) / quantidade_de_notas
moment2 <-  media_final_so - sqrt(media_final_so)^2
momento3 <- ((sum(media_final_so - mean(media_final_so))^3) / 14)
momento4 <- ((sum(media_final_so - mean(media_final_so))^4) / 14)


assimetria <- momento3/(sqrt(media_final_so - mean(media_final_so)^2))^3

p10c <-( 10/100) * 15
p25c <-( 25/100) * 15
p75c <- ( 75/100) * 15
p90c <-  ( 90/100) * 15
p10 <- 4.15 + (1.5 - 1) / 5 * 2
p25 <- 4.15 + (3.75 - 1) / 5 * 2
p75 <- 6.15 + (11.25 - 1)/ 8 * 2 
p90 <- 6.15 + (13.5 - 1)/ 8 * 2 

curtose <-( p75 - p25 )/( 2*(p90 - p10))


#simetria
# coeficiente de assimetria
skewness(media_final_so)
