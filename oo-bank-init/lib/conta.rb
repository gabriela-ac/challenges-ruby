class Conta
  attr_reader :numero, :titular
  attr_accessor :saldo, :limite

  def initialize(numero, titular, saldo, limite)
    @numero = numero
    @titular = titular
    @saldo = saldo
    @limite = limite
  end

  def sacar(saque)
    if @saldo + @limite < saque
      return false
    end
    @saldo -= saque
  end

  def depositar(deposito)
    @saldo += deposito
  end

  def transfere(conta_destino, valor)
    if sacar(valor)
      conta_destino.depositar(valor)
    else
      false
    end
  end

  def no_limite?
    @saldo < 0
  end

  def == (other)
    instance_variables == other.instance_variables
  end

end
