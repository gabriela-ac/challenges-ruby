class MutationCounter
  def calculate(dna_collection)
    collection = []
    dna_collection.each do |array|
      mutation = 0
      primeira_string = array[0]
      segunda_string = array[1]
      primeira_string.chars.each_with_index do |char, index|
        if char != segunda_string[index]
          mutation += 1
        end
      end
      collection << mutation
    end
    higher_mutation = collection.sort!.last
  end
end