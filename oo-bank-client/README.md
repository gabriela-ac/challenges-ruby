# Criando uma Conta Bancária - Parte 2

## A primeira parte já foi. Vamos encarar a segunda?


Na segunda parte deste desafio, vamos continuar nosso código que simula a
aplicação de um banco. Já temos uma classe `Conta` e agora vamos implementar a
classe `Cliente`.

Para isso, lembre-se que, depois de inicializada uma classe, você pode
instanciar objetos dela no construtor de outra classe.

Repita as instruções como no desafio anterior até que todos os testes passem
com sucesso.

> Dica: no construtor de uma classe, você pode definir valores padrão para parâmetros, por exemplo:

```
class Animal
  def initialize(nome = "Tony")
    @nome = nome
  end
end

# caso de uso

Animal.new()
# => #<Animal:0x000055c1d77224e8 @nome="Tony">

Animal.new("Toninho")
# => #<Animal:0x000055c1d7726110 @nome="Toninho">
```
