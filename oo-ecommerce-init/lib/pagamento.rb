class Pagamento
  attr_accessor :quantidade, :preco, :produto, :valor
  def initialize(quantidade:, preco:, produto: 'Sem nome')
    @quantidade = quantidade
    @preco = preco
    @produto = produto

    def calcular_valor
      @valor = quantidade * preco
    end

    def aplicar_desconto(porcentagem)
      @valor -= valor * porcentagem/100
    end


  end
end
