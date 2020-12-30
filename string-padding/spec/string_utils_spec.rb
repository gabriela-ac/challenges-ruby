require 'spec_helper'

describe StringUtils do
  it 'Checa se a frase faz padding de 1 espaço' do
    frase = 'Telefone... Minha casa.'

    expectativa = "\n"\
                  " Telefone... Minha casa. "\
                  "\n"
    expect(StringUtils.new.padding(frase, [1, 1, 1, 1])).to eq expectativa
  end

  it "Checa se a frase com faz padding com valores diferentes" do
    frase = 'Com grandes poderes vêm grandes responsabilidades.'

    expectativa = "\n"\
                  "\n"\
                  " Com grandes poderes vêm grandes responsabilidades. "\
                  "\n"\
                  "\n"
    expect(StringUtils.new.padding(frase, [2, 1, 2, 1])).to eq expectativa
  end

  it "Checa se a frase com faz padding com valores diferentes" do
    frase = 'Quanto mais aprendermos mais nos tornamos valiosos.'

    expectativa = "\n"\
                  "   Quanto mais aprendermos mais nos tornamos valiosos.   "\
                  "\n"
    expect(StringUtils.new.padding(frase, [1, 3, 1, 3])).to eq expectativa
  end
end
