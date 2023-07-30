vetor_temperatura <- c(98.60, 98.60, 98.00, 98.00, 99.00, 98.40, 98.40, 98.40, 98.40, 98.60, 98.60, 98.80, 98.60, 97.00,
            97.00, 98.80, 97.60, 97.70, 98.80, 98.00, 98.00, 98.30, 98.50, 97.30, 98.70, 97.40, 98.90, 98.60, 
            99.50, 97.50, 97.30, 97.60, 88.20, 99.60, 98.70, 99.40, 98.20, 98.00, 98.60, 98.60, 97.20, 98.40,
            98.60, 98.20, 98.00, 97.80, 98.00, 98.40, 98.60, 98.60, 97.80, 99.00, 96.50, 97.60, 98.00, 96.90, 
            97.60, 97.10, 97.90, 98.40, 97.30, 98.00, 97.50, 97.60, 98.20, 98.50, 98.80, 98.70, 97.80, 98.00,
            97.10, 97.40, 99.40, 98.40, 98.60, 98.40, 98.50, 98.60, 98.30, 98.70, 98.80, 99.10, 98.60, 97.90,
            98.80, 98.00, 98.70, 98.50, 98.90, 98.40, 98.60, 97.10, 97.90, 98.80, 98.70, 97.60, 98.20, 99.20,
            97.80, 98.00, 98.40, 97.80, 98.40, 97.40, 98.00, 97.00)

# Arredondando valores
temperaturas <- c()

for(valor_temperatura in vetor_temperatura){
  temperaturas <- append(temperaturas, round(valor_temperatura))
}


# Descobrir a quantidade de classes 
# Usando a fórmula da raiz quadrada
numero_de_classes <- sqrt(length(temperaturas))
print(numero_de_classes)


# Descobrindo a amplitude
# Verificando o maior e menor valor do vetor
valor_max <- max(temperaturas)
valor_min <- min(temperaturas)

# Ou podemos usar o método summury
summary(temperaturas)

# Calculando amplitude total
amplitude <- max(temperaturas) -  min(temperaturas)
print(amplitude)

# Calculando a amplitude do intervalo
amplitude_do_intervalo <- amplitude / numero_de_classes
print(amplitude_do_intervalo)


# Definindo os intervalos
amplitude_do_intervalo_das_classes <- seq(from = 88, to=100, by=2)
classes <- c("88 - 90", "90 - 92", "92 - 94", "94 - 96", "96 - 98", "98 - 100")

# Transformando o vertor em tabela
f <- table(temperaturas); 

tamanho_vetor <- length(temperaturas)

# Obtendo linha titulo da tabela
x = as.numeric(names(f))

# Variavel de controle que irá armazenar a quantidade de vezes que os valores se repetem
valor_absoluto = 0

# Obtendo o tamanho da linha titulo 
n1 = length(x)

# Adicionando o valores absolutos na variavel valor_absoluto
for(i in 1:n1){
  valor_absoluto[i] = f[[i]]
}

tabela_frequencia <- data.frame(Classes=classes, 
                                Frequencia_absoluta=valor_absoluto, 
                                Frequencia_absoluta_porcentagem = (valor_absoluto/tamanho_vetor)*100,
                                Frequencia_acumulada = cumsum(valor_absoluto),
                                Freq_relativa = valor_absoluto / tamanho_vetor,
                                Freq_rporcentagem = (valor_absoluto/tamanho_vetor)*100
                                )
# Colunas

freq_ab <- valor_absoluto
freq_ab_por <- (valor_absoluto/tamanho_vetor)*100
freq_acumulada <-cumsum(valor_absoluto)

freq_rel <-  valor_absoluto / tamanho_vetor
freq_rel_por <- (valor_absoluto/tamanho_vetor)*100



# Questão

# Media
# Sem distribuição de frequencia
media <- mean(temperaturas)
print(media)

# Mediana
mediana <-median(temperaturas)
print(mediana)

moda <- subset (table (temperaturas), table (temperaturas) == max (table (temperaturas)))
print(moda)

# Media com distribuição de frequencia

media_classe = c(89,90,93,95,97,99)

tabela_frequencia <- data.frame(Classes=classes, 
                                Frequencia_absoluta=valor_absoluto, 
                                Frequencia_absoluta_porcentagem = (valor_absoluto/tamanho_vetor)*100,
                                Frequencia_acumulada = cumsum(valor_absoluto),
                                Freq_relativa = valor_absoluto / tamanho_vetor,
                                Freq_rporcentagem = (valor_absoluto/tamanho_vetor)*100,
                                Xrf= valor_absoluto * cumsum(valor_absoluto),
                                Media_Classes = media_classe
)


# Moda
# A moda será o ponto médio do intervalo de maior frequência, nesse caso 
# o intervalo de maio frequência é o 4, logo, a moda é 95

somatorio_fi = sum(valor_absoluto)

# Calculando mediana
md = 94 + ((53-16)/68) * 2
