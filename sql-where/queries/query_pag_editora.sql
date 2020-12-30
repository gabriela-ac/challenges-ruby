-- Escreva abaixo o comando SQL que busca os títulos que possuem mais de 300
-- páginas da editora Martina.
SELECT titulo FROM Livros WHERE paginas > 300 AND editora='Martina'