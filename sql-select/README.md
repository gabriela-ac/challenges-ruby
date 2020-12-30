# Banco de Dados - Introdução a SQL
## Aprendendo a acessar informações em bancos de dados

Vivemos em um mundo no qual temos acesso a uma infinidade de dados e, por
essa razão, a capacidade de trabalhar com tantas informações é imprescindível.

SQL (*Standard Query Language*) é a linguagem padrão para lidar com
bancos de dados. Vamos começar essa série de tutoriais aprendendo uma maneira de
filtrar informações em tabelas.

Neste desafio você vai apenas escrever o comando SQL para realizar determinadas
buscas na tabela. Vamos começar com o comando `SELECT`.

A sintaxe básica do SQL começa com um comando, seguido do tipo de informação que
se deseja selecionar e o local de onde o dado será obtido. Por exemplo, se
tivermos uma tabela com animais:

Tabela: Animais

| `nome_popular`     | `nome_cientifico`       | `classe`  |
|--------------------|-------------------------|-----------|
| Cão                |*Canis lupus familiaris* | Mamíferos |
| Gato               |*Felis catus*            | Mamíferos |
| Jacaré-do-pantanal |*Caiman yacare*          | Répteis   |
| Tucano-toco        |*Ramphastos toco*        | Aves      |

O comando `SELECT * FROM Animais` retorna toda a lista de animais com todas as
informações disponíveis.

Já o comando `SELECT classe FROM Animais` nos devolve apenas os nomes das
Classes, nesse caso, teríamos: Mamíferos, Mamíferos, Répteis e Aves. Se
quisermos restringir a apenas uma ocorrência de cada Classe na tabela, podemos
usar o DISTINCT: `SELECT DISTINCT classe FROM Animais`.

Chamamos esses comandos de *queries*. Depois de clonar o repositório e rodar o
comando `bin/setup` você jáá pode começar a solucionar o desafio. Dentro
da pasta `/queries` há uma série de arquivos `.sql`. Você deve
abrir cada um desses arquivos e escrever a *query* que realiza a busca
solicitada.

Observação: note que os comandos SQL podem ser escritos em maiúsculas ou minúsculas, ou seja,
`SELECT` é o mesmo que `select`. Nesta série de desafios optamos por utilizar os comandos
em maiúsculas.

Abaixo apresentamos as duas tabelas utilizadas no desafio:

Tabela: Pessoas

| `nome`       | `idade`| `cidade`      | `rg`          |
|--------------|--------|---------------|---------------|
| Daniel       | 36     | Porto Alegre  | 33.525.155-1  |
| Paula        | 28     | Recife        | 44.252.256-0  |
| Juca         | 15     | Recife        | 22.515.135-3  |
| Joana        | 24     | Salvador      | 66.234.262-4  |
| Ana Carolina | 37     | Salvador      | 12.455.616-8  |

Tabela: Livros

| `titulo`                                  | `autora`                 |`paginas`| `editora`      |
|-------------------------------------------|--------------------------|---------|----------------|
| Orgulho e preconceito                     | Jane Austen              | 424     | Cia. Letras    |
| Sejamos todos feministas                  | Chimamanda Ngozi Adichie | 64      | Martina        |
| O Diário de Anne Frank                    | Anne Frank               | 352     | Martina        |
| A Vida Mentirosa dos Adultos              | Elena Ferrante           | 432     | Cia. Letras    |
| Quarto de Despejo: Diário de uma Favelada | Carolina Maria de Jesus  | 200     | Fantástica     |

Essa série de desafios tem como objetivo apresentar conteúdo básico para acessar
e manipular informações em bancos de dados SQL. Para mais informações, recomendamos consultar a
[W3Schools](https://www.w3schools.com).

 ;)
