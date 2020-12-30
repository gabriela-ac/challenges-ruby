require 'spec_helper'

describe ContaCorrente do
  it "deveria cobrar taxa de R$0,10 no deposito" do
    numero = "1234"
    titular = Cliente.new(nome: "Jose da Silva")
    saldo = 1000
    limite = 500

    conta = ContaCorrente.new(numero, titular, saldo, limite)
    saldo_anterior = conta.saldo
    valor_deposito = 200
    taxa = 0.10
    conta.depositar(valor_deposito)

    expect(conta.saldo).to eq(saldo_anterior + valor_deposito - taxa)
  end

  it "deveria não gerar juros quando atualizada" do
    conta = ContaCorrente.new("1234", Cliente.new(nome: "Jose da Silva"),
                              1000, 500)
    saldo_anterior = conta.saldo
    conta.atualizar

    expect(conta.saldo).to eq(saldo_anterior)
  end
end
