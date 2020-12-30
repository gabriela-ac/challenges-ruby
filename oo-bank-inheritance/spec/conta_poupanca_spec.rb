require 'spec_helper'

describe ContaPoupanca do
  it "deveria não cobrar taxa no deposito" do
    numero = "5354-4500"
    titular = Cliente.new(nome: "Jose da Silva")
    saldo = 1000
    conta = ContaPoupanca.new(numero, titular, saldo)

    saldo_anterior = conta.saldo
    valor_deposito = 200
    conta.depositar(valor_deposito)

    expect(conta.saldo).to eq(saldo_anterior + valor_deposito)
  end

  it "deveria adicionar juros quando atualizada" do
    conta = ContaPoupanca.new("5354-4500", Cliente.new("Jose da Silva"),
                              1000.10)
    saldo_anterior = conta.saldo
    juros = 0.005
    conta.atualizar(juros)

    expect(conta.saldo).to eq(saldo_anterior * (1 + juros))
  end
end
