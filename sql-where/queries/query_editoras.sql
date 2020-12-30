-- Escreva abaixo o comando SQL que busca apenas as autoras que foram publicadas
-- pela editora Martina ou Fantástica.
SELECT autora FROM Livros WHERE editora='Martina' OR editora='Fantástica'
