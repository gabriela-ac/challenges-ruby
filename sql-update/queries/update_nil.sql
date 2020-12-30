-- Escreva abaixo o comando SQL que atualiza valores nulos de Cidade na tabela
-- Pessoas para Belo Horizonte
UPDATE Pessoas
SET cidade='Belo Horizonte'
WHERE cidade IS NULL