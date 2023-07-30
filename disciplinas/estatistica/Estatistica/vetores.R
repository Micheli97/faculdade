# Vetores

# Estrutura de dados que permite armazenar um conjunto de dados de mesmo tipo.
# Esse valores podem ser acessador por meio de índices e a sua indexação ao contrário
# da maioria das linguagem começa em 1.
# Os vetores são os tipos de dados mais básicos em R. Mesmo um objeto criado pode
# ser armazenado na forma de um vetor

# Existem dois tipos prinicpais de vetores em R, que são os Vetores Atômicos e 
# Verores Recursivos

# A principal diferença entre os vetores atômicos e os vetores recusivo (lista) é
# que os vetores atômicos são homogêneos, enquanto o vetor recursivo (lista) pode ser
# heterogêneo.

# Os vetores têm três propriedades comuns:
# - Typeof() - informa o tipo de um valor;
# - comprimento() / lenght - informa quantos elementos o vetor contem;
# - atributos() - informa os metadados abitrários adicionais.

# Vetor atômico
vetor_inteiro <- c(1L, 2L, 3L, 4L)
print(typeof(vetor_inteiro))


# Vetor recursivo
vetor_recursivo <- list("Maça", "Laranja", "Banana")
print(typeof(vetor_recursivo))

# Usando o comando rep(x,n) 
# Ele repete o valor x, n vezes
repetindo_valores = rep(5,10)
print(repetindo_valores)


# Usando o comando seq
# Esse comando gera uma sequência numérica
sequencia <- seq(2,10) # pulando de 1 em 1
print(sequencia)


sequencia_by <- seq(2,10,2) # pulando a partir do valor definitivo
print(sequencia_by)

# definindo um tamnanho fixo de quanto
# valores terão naquele intervalo
sequencia_length = seq(2,20, length=5) 
print(sequencia_length)


# Usanod o comando _ : _

usando_pontos <- 2:10
print(usando_pontos)

# Acessando uma posição no vetor
acessando_valor <- c(1,30,54,78)
print(acessando_valor[3])

# Retirando uma posição do vetor
removendo_posicao <- c(1,20,95)
print(removendo_posicao[-3])
















