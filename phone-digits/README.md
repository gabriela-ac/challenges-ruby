# Escrevendo com teclado telefônico?
## Decodificando a lógica dos teclados de telefones

Uma prática pouco comum hoje em dia é utilizar o teclado numérico do telefone
para escrever mensagens de texto. Se você nunca reparou, pegue um telefone fixo
ou abra o teclado numérico do seu *smartphone* e observe que, junto dos números,
aparecem conjuntos de letras.

Com esse teclado simplificado, os seres humanos do século passado (também
chamados de Australopitecus) conseguiam enviar mensagens de texto pelos
telefones celulares. Para escrever a letra 'c', por exemplo, era necessário
apertar o número 2 três vezes. Para escrever a palavra 'bolo', era pressionada a
seguinte sequência de números: '22666555666'. Se você precisasse escrever duas
letras seguidas que estavam na mesma tecla, precisava esperar alguns segundos
para habilitar a letra seguinte.

Neste desafio você deve implementar um código que recebe uma *string* de
caracteres e retorna o texto que ela escreveria se fosse aplicada no teclado
numérico de um telefone. Note que o número 0 (zero) insere um espaço em branco
no texto e, neste desafio, vamos usar um espaço em branco para substituir o
tempo de espera para usar duas letras que estão na mesma tecla. Por exemplo,
para escrever 'bar' a sequência de caracteres será '22 2777'.

<img
src="https://campuscode-site.s3-sa-east-1.amazonaws.com/codesaga/teclado_numerico.png",
width=400, height=auto />
