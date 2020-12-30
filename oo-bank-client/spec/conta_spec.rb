require 'spec_helper'

describe Conta do
  it "titular deveria ser um Cliente" do
    conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)

    expect(conta.titular).to be_a(Cliente)
  end

  it "deveria conseguir criar um objeto do tipo Conta" do
    numero = "2303-2"
    titular = "José da Silva"
    saldo = 1000.10
    limite = 500
    conta = Conta.new(numero, titular, saldo, limite)

    expect(conta.numero).to eq numero
    expect(conta.titular.nome).to eq titular
    expect(conta.limite).to eq limite
    expect(conta.saldo).to eq saldo
  end

  it "deveria ter um novo saldo quando houver um saque" do
    numero = "2303-2"
    titular = "José da Silva"
    saldo = 1000.10
    limite = 500
    conta = Conta.new(numero, titular, saldo, limite)

    saldo_anterior = conta.saldo
    saque = 200

    conta.sacar(saque)

    expect(conta.saldo).to eq(saldo_anterior - saque)
  end

  it "deveria ter um novo saldo depois de um deposito" do
    conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)
    saldo_anterior = conta.saldo
    deposito = 500

    conta.depositar(deposito)

    expect(conta.saldo).to eq(saldo_anterior + deposito)
  end

  it "deveria retorna false quando não for possível sacar" do
    conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)
    saque = 2000

    expect(conta.sacar(saque)).to eq false
  end

  it "deveria deixar a conta negativa quando o saque usar o limite" do
    conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)
    saque = 1500
    saldo_anterior = conta.saldo

    conta.sacar(saque)

    expect(conta.saldo).to eq(saldo_anterior - saque)
  end

  it "deveria mostrar que a conta está usando limite" do
    conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)
    saque = 1500

    conta.sacar(saque)

    expect(conta.no_limite?).to eq true
  end

  it "duas contas com mesmos dados deveriam ser iguais" do
    conta1 = Conta.new('2303-2', 'José da Silva', 1000.10, 500)
    conta2 = Conta.new('2303-2', 'José da Silva', 1000.10, 500)

    expect(conta1).to eq conta2
  end

  it "deveria ter novo saldo após tranferencia" do
    conta_origem = Conta.new('2303-2', 'José da Silva',
                             1000.10, 500)
    saldo_anterior_origem = conta_origem.saldo
    conta_destino = Conta.new('3432-2', 'Carlos Almeida',
                              4000.54, 500)
    saldo_anterior_destino = conta_destino.saldo
    valor_transferencia = 560.40

    conta_origem.transfere(conta_destino, valor_transferencia)

    expect(conta_origem.saldo).to eq(saldo_anterior_origem - valor_transferencia)
    expect(conta_destino.saldo).to eq(saldo_anterior_destino + valor_transferencia)
  end

  it "deveria ser false quando não for possivel transferir" do
    conta_origem = Conta.new('2303-2', 'José da Silva',
                             1000.10, 500)
    conta_destino = Conta.new('3432-2', 'Zenildo Bispo',
                              4000.54, 500)
    valor_transferencia = 1560.40

    expect(conta_origem.transfere(conta_destino, valor_transferencia)).to eq(false)
  end
end
