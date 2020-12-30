class Word
  def vowels_count(phrase)
    phrase.downcase.count("aeiouáéíóúãeiõuâêôy")
  end
  
  def consonants_count(phrase)
    phrase.downcase.count("bcdfghjklmnprqstvwxz")
  end
  
end