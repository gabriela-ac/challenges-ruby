require 'spec_helper'

describe WordCounter do
  describe 'Conta a ocorrência de cada palavra na frase' do
    it "The first rule of Fight Club is: You do not talk about Fight Club." do
      frase = "The first rule of Fight Club is: You do not talk about Fight Club."
      expect(WordCounter.new.count_words(frase)).to eq [["the", 1], ["first", 1],
                                                        ["rule", 1], ["of", 1],
                                                        ["fight", 2], ["club", 2],
                                                        ["is", 1], ["you", 1],
                                                        ["do", 1], ["not", 1],
                                                        ["talk", 1], ["about", 1]]
    end

    it 'One Ring to rule them all, One ring to find them; One ring to bring them all and in the darkness bind them.' do
      frase = 'One Ring to rule them all, One ring to find them; One ring to '\
              'bring them all and in the darkness bind them.'

      expect(WordCounter.new.count_words(frase)).to eq [['one', 3], ['ring', 3],
                                                        ['to', 3], ['rule', 1],
                                                        ['them', 4], ['all', 2],
                                                        ['find', 1], ['bring', 1],
                                                        ['and', 1], ['in', 1],
                                                        ['the', 1], ['darkness', 1],
                                                        ['bind', 1]]
    end

    it 'Fear is the path to the dark side. Fear leads to anger; anger leads to hate; hate leads to suffering. I sense much fear in you.' do
      frase = 'Fear is the path to the dark side. Fear leads to anger; '\
              'anger leads to hate; hate leads to suffering. '\
              'I sense much fear in you.'

      expect(WordCounter.new.count_words(frase)).to eq [['fear', 3], ['is', 1],
                                                        ['the', 2], ['path', 1],
                                                        ['to', 4], ['dark', 1],
                                                        ['side', 1], ['leads', 3],
                                                        ['anger', 2], ['hate', 2],
                                                        ['suffering', 1], ['i', 1],
                                                        ['sense', 1], ['much', 1],
                                                        ['in', 1], ['you', 1]]
    end
  end
end
