class ArrayUtils
  def self.multiplos(qtd, multiplo)
    (1..qtd).map { |elemento| elemento * multiplo}
  end

  def self.tabuada(valor)
    (1..valor).map { |elemento| self.multiplos(10, elemento) }
  end

end
