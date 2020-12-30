class Cliente
    
    attr_accessor :nome, :sobrenome, :cpf, :tratamento
    def initialize(nome, sobrenome="", cpf="")
        @nome = nome
        @sobrenome = sobrenome
        @cpf = cpf
    end

    def ==(cliente)
      cliente.nome == nome &&
      cliente.sobrenome == sobrenome &&
      cliente.cpf == cpf
    end

    def nome_completo
      if @tratamento.nil?
        "#{@nome} #{@sobrenome}"
      else
        "#{@tratamento} #{@nome} #{@sobrenome}"
      end
    end

end
