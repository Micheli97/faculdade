# Data Frame 

# S�o objetos de duas dimens�es, no qual cada coluna pode possuir um tipo prim�rio 
# espec�fico, ou seja s�o tabelas de dados. Geralmente s�o utilizados para armazenar bases de dados.

# Criando data frame usando o m�todo data.frame()
nome <-  c("Paula", "Ana", "Mel")
idade <- c(12, 25, 18)
data_frame1 <- data.frame(nome, idade)

# Funcao str() -  Essa funcao da uma visao clara da estrutura do objeto e informa 
# os tipos de dados existentes

str(data_frame1)

# Os elementos de um data.frame pode ser acessado como uma matriz

print(data_frame1)
                          