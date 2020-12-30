-- Escreva abaixo o comando SQL que corrige Cidade de Pernambuco para Recife
-- na tabela Pessoas
UPDATE Pessoas
SET cidade='Recife'
WHERE cidade='Pernambuco'