# Vetores

# Estrutura de dados que permite armazenar um conjunto de dados de mesmo tipo.
# Esse valores podem ser acessador por meio de �ndices e a sua indexa��o ao contr�rio
# da maioria das linguagem come�a em 1.
# Os vetores s�o os tipos de dados mais b�sicos em R. Mesmo um objeto criado pode
# ser armazenado na forma de um vetor

# Existem dois tipos prinicpais de vetores em R, que s�o os Vetores At�micos e 
# Verores Recursivos

# A principal diferen�a entre os vetores at�micos e os vetores recusivo (lista) �
# que os vetores at�micos s�o homog�neos, enquanto o vetor recursivo (lista) pode ser
# heterog�neo.

# Os vetores t�m tr�s propriedades comuns:
# - Typeof() - informa o tipo de um valor;
# - comprimento() / lenght - informa quantos elementos o vetor contem;
# - atributos() - informa os metadados abitr�rios adicionais.

# Vetor at�mico
vetor_inteiro <- c(1L, 2L, 3L, 4L)
print(typeof(vetor_inteiro))


# Vetor recursivo
vetor_recursivo <- list("Ma�a", "Laranja", "Banana")
print(typeof(vetor_recursivo))

# Usando o comando rep(x,n) 
# Ele repete o valor x, n vezes
repetindo_valores = rep(5,10)
print(repetindo_valores)


# Usando o comando seq
# Esse comando gera uma sequ�ncia num�rica
sequencia <- seq(2,10) # pulando de 1 em 1
print(sequencia)


sequencia_by <- seq(2,10,2) # pulando a partir do valor definitivo
print(sequencia_by)

# definindo um tamnanho fixo de quanto
# valores ter�o naquele intervalo
sequencia_length = seq(2,20, length=5) 
print(sequencia_length)


# Usanod o comando _ : _

usando_pontos <- 2:10
print(usando_pontos)

# Acessando uma posi��o no vetor
acessando_valor <- c(1,30,54,78)
print(acessando_valor[3])

# Retirando uma posi��o do vetor
removendo_posicao <- c(1,20,95)
print(removendo_posicao[-3])
















