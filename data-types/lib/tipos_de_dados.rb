class TiposDeDados
  def ola_mundo
    'Olá Mundo'
  end

  def um_numero
    valor = 100.80
    valor.to_i
  end

  def um_decimal
    valor = "100.80"
    valor.to_f
  end

  def verdadeiro?
    n1 = 1
    n2 = 2
    n1 < n2
  end

  def falso?
    n1 = 1
    n2 = 2
    n1 == n2    
  end

  def array_vazio
    array = []
  end

  def array_com_um_elemento
    array = ["elemento1"]
  end

  def array_com_dois_elementos
    array = ["elemento1", "elemento2"]
  end
end
