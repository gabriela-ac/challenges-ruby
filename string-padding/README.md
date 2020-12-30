# Espaçamento de texto
## Vamos descobrir como espaçar linhas em Ruby

Você escreveu um livro sobre a história do cinema, mas, para publicá-lo, precisa atender às exigências da editora. Desta vez, eles querem que você altere o `padding` do texto. A propriedade `padding` define o espaçamento em volta de um conteúdo, muito usado no [HTML](https://pt.wikipedia.org/wiki/HTML).
 
No Ruby, não temos uma função que faça isso, então temos que construir uma.
 
Ela deve receber uma frase e um *array* que represente o espaçamento ao topo,
direita, em baixo e esquerda como: `[valor topo, valor direita, valor abaixo, valor esquerda]`
 
Um exemplo de chamada:
 
```ruby
padding("Telefone... Minha casa.", [1, 1, 1, 1])
```
 
Essa chamada significa que vamos deixar uma linha acima, um espaço à direita da
frase, uma linha abaixo e um espaço à esquerda da frase.
 
Vamos escrever um código que resolva esse desafio?
 
Modifique o método na classe `StringUtils` e envie sua solução!