class Arrays
  def self.converte_impares_por(lista, numero)
    impares = lista.select(&:odd?)
    [impares, impares.map { |elemento| elemento * numero }]
  end

  def self.converte_pares_por(lista, numero)
    pares = lista.select(&:even?)
    [pares, pares.map { |elemento| elemento * numero }]
  end
end