class Conta
  attr_accessor :titular, :limite, :saldo, :numero

  def initialize(numero, titular, saldo, limite="")
    @numero = numero
    @titular = Cliente.new(titular)
    @saldo = saldo
    @limite = limite
  end

  def sacar(valor)
    return false if valor > (@saldo + @limite)

    @saldo -= valor
  end

  def depositar(valor)
    @saldo += valor
  end

  def no_limite?
    @saldo < 0
  end

  def ==(conta)
    conta.titular == titular &&
      conta.limite == limite &&
      conta.saldo  == saldo &&
      conta.numero == numero
  end

  def transfere(conta_destino, valor_transferencia)
    return false unless sacar(valor_transferencia)

    conta_destino.depositar(valor_transferencia)
  end
end
