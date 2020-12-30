# Banco de Dados - Introdução a SQL
## Aprendendo a remover informações de tabelas de bancos de dados

Neste desafio vamos apagar informações de tabelas de um banco de dados. O
comando utilizado para isso é o `DELETE`. Junto com ele utilizamos o `FROM` e o
`WHERE` para indicar exatamente de qual tabela e quais dados devem ser
removidos.

Vamos usar a tabela abaixo como exemplo:

Tabela: Animais

| `nome_popular`     | `nome_cientifico`       | `classe`  |
|--------------------|-------------------------|-----------|
| Cão                |*Canis lupus familiaris* | Mamíferos |
| Lobo               |*Canis lupus*            | Mamíferos |
| Gato               |*Felis catus*            | Mamíferos |
| Jacaré-do-pantanal |*Caiman yacare*          | Répteis   |
| Tucano-toco        |*Ramphastos toco*        | Aves      |

Para remover todos os dados referentes a cão podemos usar o comando:

```
DELETE FROM Animais WHERE nome_popular='Cão'
```

Fique atento para as condições descritas no comando `WHERE`. Ele pode
afetar muitos valores e, se ele for omitido, vai remover todas as
linhas da tabela.

Se quisermos, por exemplo, remover todos os mamíferos, poderíamos utilizar o
seguinte comando:

```
DELETE FROM Animais WHERE classe='Mamíferos'
```

Repita o procedimento do desafio anterior escrevendo em cada arquivo `.sql` os
comandos solicitados, sempre rodando o `rspec` para validar sua solução.

Essa série de desafios tem como objetivo apresentar conteúdo básico para acessar
e manipular informações em bancos de dados SQL. Para mais informações,
recomandamos consultar a [W3Schools](https://www.w3schools.com).

;)

Abaixo apresentamos a estrutura das duas tabelas utilizadas no desafio:

Tabela: Pessoas

| `nome`       |`idade` | `cidade`       | `maioridade` |
|--------------|--------|----------------|--------------|
| Keyla        | 12     | Manaus         | 0            |
| Daniel       | 36     | Porto Alegre   | 0            |
| Paula        | 28     | Recife         | 0            |
| Juca         | 15     | Recife         | 0            |
| Joana        | 24     | Salvador       | 0            |
| Ana Carolina | 16     | Salvador       | 0            |
| Henrique     | 26     | nil            | 0            |
| Erika        | 18     | nil            | 0            |

Tabela: Livros

| `titulo`                                  | `autora`                  |`genero`   | `editora`      |
|-------------------------------------------|---------------------------|-----------|----------------|
| Orgulho e preconceito                     | Jane Austen               | Romance   | Cia. Letras    |
| Sejamos todos feministas                  | Chimamanda Ngozi Adichie  | Ensaio    | Martina        |
| O Diário de Anne Frank                    | Anne Frank                | Biografia | Martina        |
| A Vida Mentirosa dos Adultos              | Elena Ferrante            | Ficção    | Cia. Letras    |
| Quarto de Despejo: Diário de uma Favelada | Carolina Maria de Jesus   | Biografia | nil            |


