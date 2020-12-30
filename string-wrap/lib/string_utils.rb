class StringUtils
  def wrap(frase, tamanho)
    ##regexp mais simples e legível 
    # frase.gsub(/(.{1,#{tamanho}})(\s+|\Z)/,"\\1\n").chomp
    frase.insert(tamanho - 1,"\n")
  end
end


### outra solução utilizando lógica ###
# letras = frase.chars
# novo_tamanho = tamanho
# letras.each do |elemento, indice|
#   if letras[novo_tamanho] == ' ' #se for vazio, pula a linha
#     letras[novo_tamanho] = "\n"
#     novo_tamanho += tamanho + 1
#   else
#     novo_tamanho -= 1 #senao, permanece na mesma linha
#   end
#   if novo_tamanho >= letras.length
#     break
#   end
# end
# letras.join