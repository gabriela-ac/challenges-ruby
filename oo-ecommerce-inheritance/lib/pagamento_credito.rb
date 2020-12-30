class PagamentoCredito < Pagamento
  attr_accessor :juros, :valor

  def initialize(quantidade:, produto:, juros:)
    super(quantidade: quantidade, produto: produto)
    @juros = juros
  end

  def atualizar_valor
    @valor += @valor*@juros/100
  end
end
