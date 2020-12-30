require 'spec_helper'

describe StringUtils do
  it 'Checa se a frase quebra em duas linhas limitando em 30 caracteres' do
    frase = 'A única pessoa no seu caminho é você mesma.'

    expectativa = "A única pessoa no seu caminho\n"\
                  "é você mesma."
    expect(StringUtils.new.wrap(frase, 30)).to eq expectativa
  end

  it 'Checa se a frase com quebra em 30 caracteres não quebra palavras' do
    frase = 'Um Anel para a todos governar, Um Anel para encontrá-los, Um Anel para a todos trazer e na escuridão aprisioná-los.'

    expectativa = "Um Anel para a todos governar,\n"\
                  "Um Anel para encontrá-los, Um\n"\
                  "Anel para a todos trazer e na\n"\
                  "escuridão aprisioná-los."
    expect(StringUtils.new.wrap(frase, 30)).to eq expectativa
  end

  it "Checa se a frase com quebra em 20 caracteres não quebra palavras" do
    frase = 'Mamãe sempre disse que a vida é como uma caixa de chocolates. Você nunca sabe o que vai encontrar.'

    expectativa = "Mamãe sempre disse\n"\
                  "que a vida é como\n"\
                  "uma caixa de\n"\
                  "chocolates. Você\n"\
                  "nunca sabe o que vai\n"\
                  "encontrar."
    expect(StringUtils.new.wrap(frase, 20)).to eq expectativa
  end

  it 'Checa se a frase com quebra em 10 caracteres não quebra palavras' do
    frase = 'Houston, temos um problema.'

    expectativa = "Houston,\n"\
                  "temos um\n"\
                  "problema."
    expect(StringUtils.new.wrap(frase, 10)).to eq expectativa
  end

  it 'Checa se a frase não quebra em linhas quando o limite é maior' do
    frase = 'Nunca olho para trás, querida. Isso me distrai do agora.'

    expect(StringUtils.new.wrap(frase, 60)).to eq frase
  end
end
