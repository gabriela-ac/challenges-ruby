require_relative 'conta'

class ContaPoupanca < Conta
    
    def initialize(numero, titular, saldo)
      super(numero, titular, saldo)
    end

    def depositar(valor_deposito)
      @saldo += valor_deposito
    end

    def atualizar(juros)
      @saldo = @saldo*(1 + juros)
    end

end