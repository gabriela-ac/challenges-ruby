require 'spec_helper'
require 'sqlite3'

describe Sql do
  db = SQLite3::Database.open "db/database.db"

  it 'Realiza a query em Pessoas e retorna todos os dados de quem mora em Salvador' do
    resultado = db.execute(Sql.new.query_salvador)
    expect(resultado).to eq [["Joana", 24, "Salvador", "66.234.262-4"],
                             ["Ana Carolina", 37, "Salvador", "12.455.616-8"]]
  end

  it 'Realiza a query em Pessoas e retorna apenas os nomes de quem mora em Recife' do
    resultado = db.execute(Sql.new.query_nome_recife)
    expect(resultado).to eq [["Paula"], ["Juca"]]
  end

  it 'Realiza a query em Pessoas e retorna apenas os nomes das pessoas com idade maior que 25 anos' do
    resultado = db.execute(Sql.new.query_nome_idade)
    expect(resultado).to eq [["Daniel"], ["Paula"], ["Ana Carolina"]]
  end

  it 'Realiza a query em Pessoas e retorna apenas nome de quem não possui RG' do
    resultado = db.execute(Sql.new.query_nil_or_empty)
    expect(resultado).to eq [['Daniel'],['Paula']]
  end

  it 'Realiza a query em Livros e retorna as autoras que publicam na editora Cia. Letras' do
    resultado = db.execute(Sql.new.query_autora_editora)
    expect(resultado).to eq [['Jane Austen'], ['Elena Ferrante']]
  end

  it 'Realiza a query em Livros e retorna os títulos que possuem mais de 300 páginas da editora Martina' do
    resultado = db.execute(Sql.new.query_pag_editora)
    expect(resultado).to eq [['O Diário de Anne Frank']]
  end

  it 'Realiza a query em Livros e retorna as autoras publicadas pela editora Martina ou Fantástica' do
    resultado = db.execute(Sql.new.query_editoras)
    expect(resultado).to eq [['Chimamanda Ngozi Adichie'], ['Anne Frank'], ['Carolina Maria de Jesus']]
  end

  it 'Realiza a query em Livros e retorna os títulos que não foram publicados pela Martina' do
    resultado = db.execute(Sql.new.query_not_editora)
    expect(resultado).to eq [['Orgulho e preconceito'], ['A Vida Mentirosa dos Adultos'], ['Quarto de Despejo: Diário de uma Favelada']]
  end

  it 'Realiza a query em Livros e retorna uma ocorrência de cada editora que possui ti em seu nome' do
    resultado = db.execute(Sql.new.query_ed)
    expect(resultado).to eq [['Martina'], ['Fantástica']]
  end
end
