require 'spec_helper'

describe QuadradoPolibio do
  it 'criptografar a palavra polibio' do
    expect(QuadradoPolibio.new.criptografar(
             'polibio'
           )).to eq '34332623122333'
  end

  it 'descriptografar a palavra polibio' do
    expect(QuadradoPolibio.new.descriptografar(
             '34332623122333'
           )).to eq 'polibio'
  end

  it 'criptografar a frase 1 Anel para todos governar' do
    expect(QuadradoPolibio.new.criptografar(
             '1 Anel para a todos governar'
           )).to eq '5411321526341136111142331433412133441536321136'
  end

  it 'descriptografar na frase 1anelparatodosgovernar' do
    expect(QuadradoPolibio.new.descriptografar(
             '5411321526341136111142331433412133441536321136'
           )).to eq '1anelparaatodosgovernar'
  end

  it 'criptografar a frase Ada Lovelance foi a primeira programadora em 1842' do
    expect(QuadradoPolibio.new.criptografar(
            'Ada Lovelace foi a primeira programadora em 1842'
           )).to eq '1114112633441526111315163323113436233115233611343633213611311114333611153154656155'
  end

  it 'descriptografar na frase adalovelancefoiaprimeiraprogramadoraem1842' do
    expect(QuadradoPolibio.new.descriptografar(
             '1114112633441526111315163323113436233115233611343633213611311114333611153154656155'
           )).to eq 'adalovelacefoiaprimeiraprogramadoraem1842'
  end
end
