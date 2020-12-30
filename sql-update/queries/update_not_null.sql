-- Escreva abaixo o comando SQL que atualiza Genero para Romance em Livros que
-- possuem editora não nula
UPDATE Livros
SET genero='Romance'
WHERE editora IS NOT NULL
