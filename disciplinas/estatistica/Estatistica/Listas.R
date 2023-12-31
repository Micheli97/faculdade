# Listas
# Estrutura de dados vers�til. Seus elementos pode ser classes
# de objetos. 
# Cada elemento pode ter um tamanho diferente
# Os elementos podem conter diferentes estruturas de dados

# Criando listas
# As listas podem ser criadas usando os m�todos list() e c()
# Bastas listar os dados e separ�-los por v�rgulas

# ex

lst <- list(
  c("Mam�o", "Ma�a", "Banana"),
  1,2,3,
  FALSE, TRUE, FALSE
)


# Acessando �ndice da listas
# Basta adicionar a posi��o usando cochetes

lst[2]


# Visualizando a estrutura de uma lista usando o m�todo str()
str(lst)


# Para verificar se uma lista � aninhada basta usar o comando is.recursive()
is.recursive(lst)

# Para converter um verto em lista basta usar o comando as.list()

# Para desfazer a convers�o basta usar o comando unlist()

# Removendo elementos

lst[5] <- NULL
lst[-4]

# Convertendo lista para data frame

nome <-  c("Paula", "Ana", "Mel")
idade <- c(12, 25, 18)

pessoa <- data.frame(nome, idade)