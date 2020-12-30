require_relative 'produto'

class Pagamento
  attr_accessor :produto, :quantidade, :valor

  def initialize(quantidade:, produto: 'Sem nome')
    @quantidade = quantidade
    @produto = produto
  end

  def calcular_valor
    @valor = @quantidade * produto.preco
    produto.estoque -= @quantidade
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end

