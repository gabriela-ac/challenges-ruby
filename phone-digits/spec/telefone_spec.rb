require 'spec_helper'

describe Telefone do
  it 'Decodifica sequência de teclas pressionadas e escreve: et.' do
    expect(Telefone.new().teclar('338')).to eq 'et'
  end

  it 'Decodifica sequência de teclas pressionadas e escreve: qsd girls.' do
    expect(Telefone.new().teclar('77 7777304 4447775557777')).to eq 'qsd girls'
  end

  it 'Decodifica sequência de teclas pressionadas e escreve: ruby on rails.' do
    expect(Telefone.new().teclar('77788229990666 66077724445557777')).to eq 'ruby on rails'
  end

  it 'Decodifica sequência de teclas pressionadas e escreve: code saga.' do
    expect(Telefone.new().teclar('2226663 3307777242')).to eq 'code saga'
  end
end
