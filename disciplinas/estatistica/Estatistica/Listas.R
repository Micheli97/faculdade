# Listas
# Estrutura de dados versátil. Seus elementos pode ser classes
# de objetos. 
# Cada elemento pode ter um tamanho diferente
# Os elementos podem conter diferentes estruturas de dados

# Criando listas
# As listas podem ser criadas usando os métodos list() e c()
# Bastas listar os dados e separá-los por vírgulas

# ex

lst <- list(
  c("Mamão", "Maça", "Banana"),
  1,2,3,
  FALSE, TRUE, FALSE
)


# Acessando índice da listas
# Basta adicionar a posição usando cochetes

lst[2]


# Visualizando a estrutura de uma lista usando o método str()
str(lst)


# Para verificar se uma lista é aninhada basta usar o comando is.recursive()
is.recursive(lst)

# Para converter um verto em lista basta usar o comando as.list()

# Para desfazer a conversão basta usar o comando unlist()

# Removendo elementos

lst[5] <- NULL
lst[-4]

# Convertendo lista para data frame

nome <-  c("Paula", "Ana", "Mel")
idade <- c(12, 25, 18)

pessoa <- data.frame(nome, idade)