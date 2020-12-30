require_relative 'conta'

class ContaCorrente < Conta
    attr_accessor :taxa

    def initialize(numero, titular, saldo, limite, taxa=0.10)
      super(numero, titular, saldo, limite)
      @taxa = taxa
    end

    def depositar(valor_deposito)
      @saldo += valor_deposito - taxa
    end

    def atualizar
      @saldo
    end

end