def shortest(phrase)
    words = phrase.split(' ')
    shortest_word = words.first
    words.each do |word|
        if word.length < shortest_word.length
            shortest_word = word
        end
    end
    puts shortest_word
end

shortest('céu está azul O')

