class Arrays
  def self.multiplica_indices(array)
    array.each_with_index.map { |elemento, indice| elemento * indice }
  end
end


