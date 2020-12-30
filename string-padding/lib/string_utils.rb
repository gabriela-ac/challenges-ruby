class StringUtils
  def padding(frase, padding_array)
  "\n" * padding_array[0]  + ' ' * padding_array[3] + frase + ' ' * padding_array[1] + "\n" * padding_array[2]
  end

end

#percebi que estava juntando o sinal de multiplicação com os outros termos e, assim, ele não considerava como um número inteiro
