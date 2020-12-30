-- Escreva abaixo o comando SQL que busca uma única ocorrência de cada editora
-- cujo nome possui as letras 'ti'.
SELECT DISTINCT editora FROM Livros WHERE editora LIKE '%ti%'