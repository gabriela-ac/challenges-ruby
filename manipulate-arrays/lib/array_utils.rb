class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(divisor1, divisor2)
    array = (1..50).to_a

    array_condicao1 = array.select { |elemento| elemento % divisor1 == 0 && elemento % divisor2 == 0 } 
    array_condicao2 = array.select { |elemento| elemento % divisor1 == 0 && elemento % divisor2 != 0 }
    array_condicao3 = array.select { |elemento| elemento % divisor2 == 0 && elemento % divisor1 != 0}
    [array_condicao1, array_condicao2, array_condicao3]

  end

  def self.soma(list)
    list.inject(:+)    
  end

  def self.combinar(list1, list2)
    list1.product(list2)
  end

end


