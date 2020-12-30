-- Escreva abaixo o comando SQL que atualiza maioridade para 1 em Pessoas,
-- somente para aqueles que possuem idade maior ou igual a 18 anos
UPDATE Pessoas
SET maioridade=1 
WHERE idade >=18