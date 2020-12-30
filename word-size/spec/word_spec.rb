require 'spec_helper'

describe Word do

  describe 'Encontrar a palavra mais longa e retornar' do

    it 'Frase 01: Não confunda meu desejo de evitar violência com a inabilidade de a enfrentar.' do
      phrase = "Não confunda meu desejo de evitar violência com a inabilidade de a enfrentar"

      expect(Word.new.longest(phrase)).to eq "inabilidade"
    end

    it 'Frase 02: Minha coragem sempre aumenta com todas as tentativas de me intimidar.' do
      phrase = "Minha coragem sempre aumenta com todas as tentativas de me intimidar"

      expect(Word.new.longest(phrase)).to eq "tentativas"
    end
  end

  describe 'Encontrar a palavra mais curta e retornar' do

    it "Frase 01: São tempos difíceis para os sonhadores." do
      phrase = "São tempos difíceis para os sonhadores"

      expect(Word.new.shortest(phrase)).to eq "os"
    end

    it "Frase 02: Eu sei correr sem você precisar segurar minha mão." do
      phrase = "Eu sei correr sem você precisar segurar minha mão"

      expect(Word.new.shortest(phrase)).to eq "Eu"
    end
  end
end
