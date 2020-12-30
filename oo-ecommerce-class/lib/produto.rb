require_relative 'categoria'

class Produto
    attr_accessor :nome, :categoria, :preco, :estoque
    
    def initialize(nome:, categoria: Categoria.new.nome, preco:, estoque:)
        @nome = nome
        @categoria = categoria
        @preco = preco
        @estoque = estoque
    end

end
