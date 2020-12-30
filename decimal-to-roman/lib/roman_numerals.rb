class RomanNumerals
  def from_decimal(numero)
    conversao = { 1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X', 40 => 'XL', 50 => 'L', 90 => 'XC', 100 => 'C', 400 => 'CD', 500 => 'D', 900 => 'CM', 1000 => 'M' }

    romano = ''
    conversao.reverse_each do |chave, valor|
      romano << valor * (numero/chave)
      numero %= chave
    end
    romano
  end
end