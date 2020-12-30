class WordCounter
  def count_words(frase)
    array_frase = frase.downcase.split(' ')
    array_sem_pontuacao = array_frase.map {|elemento| elemento.delete ".,;:" }
    array_sem_pontuacao.group_by(&:itself).map { |elemento, posicao| [elemento, posicao.count] }
  end
end

