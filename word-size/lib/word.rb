class Word
  def longest(phrase)
    phrase.split.sort_by(&:length).last
  end

  def shortest(phrase)
    phrase.split.sort_by(&:length).first
  end

end