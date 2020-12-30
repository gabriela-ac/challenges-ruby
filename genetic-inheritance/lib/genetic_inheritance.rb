class GeneticInheritance
  def predict_proportions(first_individual, second_individual)
    
    calculo_gametas = first_individual.chars.product(second_individual.chars).map { |array| array.sort.join }
    hash_contagem = calculo_gametas.tally.to_a
    hash_contagem.each_with_index do |elemento, indice|
      hash_contagem[indice][1] = (hash_contagem[indice][1].to_f/calculo_gametas.length.to_f)
    end

  end
end
