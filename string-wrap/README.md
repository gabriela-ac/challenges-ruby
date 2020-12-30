# Quebra de linha
## Vamos descobrir como quebrar linhas em Ruby

Depois de resolver todas as sugestões propostas para seu livro, uma nova exigência chegou:
cada linha precisa conter um número máximo de caracteres, incluindo espaços em branco.
 
Já que editoras diferentes têm um valor diferente como padrão, como uma boa pessoa programadora, você pensou em escrever um código pra isso. 
 
Para resolver esse desafio em uma frase como:
 
> Nunca deixe que alguém te diga que não pode fazer algo. Nem mesmo eu. Se você
> tem um sonho, tem que protegê-lo.
 
Se queremos quebrar a linha em 80 caracteres, ficaria:
 
> Nunca deixe que alguém te diga que não pode fazer algo. Nem mesmo eu. Se você
>
> tem um sonho, tem que protegê-lo.
 
Para quebrar em 60, ficaria:
 
> Nunca deixe que alguém te diga que não pode fazer algo. Nem
>
> mesmo eu. Se você tem um sonho, tem que protegê-lo.
 
Note que há algumas regras:
 
- Não podemos quebrar palavras no meio, a quebra deve ocorre antes ou depois da palavra.
- Caracteres como vírgulas e ponto contam junto com a palavra.
- Marcações como `\n` para quebra de linha não contam nessa quantidade.