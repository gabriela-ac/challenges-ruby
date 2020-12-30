class Cliente
  attr_reader :nome, :sobrenome, :cpf
  attr_writer :tratamento

  def initialize(nome, sobrenome = "", cpf = "")
    @nome = nome
    @sobrenome = sobrenome
    @cpf = cpf
  end

  def nome_completo
    if tratamento
      "#{tratamento} #{nome} #{sobrenome}"
    else
      "#{nome} #{sobrenome}"
    end
  end

  def tratamento
    @tratamento
  end

  def ==(cliente)
    cliente.nome == nome &&
      cliente.sobrenome == sobrenome &&
      cliente.cpf == cpf
  end
end
