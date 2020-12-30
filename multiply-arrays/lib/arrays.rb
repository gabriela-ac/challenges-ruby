class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array.map.with_index do |elemento, indice| 
      if indice == 0
        elemento * array[indice+1]
      elsif indice == array.length-1
        array[indice-1] * elemento
      else
        array[indice-1] * array[indice+1]
      end
    end 
  end
end

