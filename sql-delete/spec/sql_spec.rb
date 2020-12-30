require 'spec_helper'
require 'sqlite3'

describe Sql do
  before do
    system('rm db/database.db')
    db = SQLite3::Database.open 'db/database.db'
    db.execute <<-SQL
      CREATE TABLE Pessoas(
       Nome varchar(255),
       Idade int,
       Cidade varchar(255),
       Maioridade bit
      );
    SQL
    db.execute <<-SQL
      CREATE TABLE Livros(
        Titulo varchar(255),
        Autora varchar(255),
        Genero varchar(255),
        Editora varchar(255)
      );
    SQL

    [
      ['Keyla', 12, 'Manaus', 0],
      ['Daniel', 36, 'Porto Alegre', 1],
      ['Paula', 28, 'Recife', 1],
      ['Juca', 15, 'Recife', 0],
      ['Joana', 24, 'Salvador', 1],
      ['Ana Carolina', 16, 'Salvador', 0],
      ['Henrique', 26, nil , 1],
      ['Erika', 18, nil, 1]
    ].each do |dados|
      db.execute "INSERT INTO Pessoas VALUES ( ?, ?, ?, ? )", dados
    end

    [
      ["Orgulho e preconceito", "Jane Austen", "Ficção", "Cia. Letras"],
      ["Sejamos todos feministas", "Chimamanda Ngozi Adichie", "Ensaio", "Martina"],
      ["O Diário de Anne Frank", "Anne Frank", "Biografia", "Martina"],
      ["A Vida Mentirosa dos Adultos", "Elena Ferrante", "Ficção", "Cia. Letras"],
      ["Quarto de Despejo: Diário de uma Favelada", "Carolina Maria de Jesus", "Biografia", nil]
    ].each do |dados_livro|
      db.execute "INSERT INTO Livros VALUES ( ?, ?, ?, ? )", dados_livro
    end

    rescue SQLite3::Exception => e
      puts e
    ensure
      db.close if db
  end

  it 'Deleta Keyla de Pessoas' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.delete_keyla)
    resultado = db.execute("SELECT nome FROM Pessoas")
    expect(resultado).to eq [['Daniel'],['Paula'],['Juca'],['Joana'],['Ana Carolina'],['Henrique'],['Erika']]
  end

  it 'Deleta de Pessoas aqueles que possuem cidade nula' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.delete_cidade_nil)
    resultado = db.execute("SELECT cidade FROM Pessoas")
    expect(resultado).to eq [['Manaus'], ['Porto Alegre'], ['Recife'], ['Recife'],['Salvador'], ['Salvador']]
  end

  it 'Deleta de Livros aqueles publicados pela editora Martina' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.delete_martina)
    resultado = db.execute("SELECT editora FROM Livros")
    expect(resultado).to eq [['Cia. Letras'], ['Cia. Letras'], [nil]]
  end

  it 'Deleta de Livros aqueles que não possuem editora nula' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.delete_editora_not_nil)
    resultado = db.execute("SELECT editora FROM Livros")
    expect(resultado).to eq [[nil]]
  end

  it 'Deleta todas as linhas da tabela Livros' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.delete_todos_livros)
    resultado = db.execute("SELECT titulo FROM Livros")
    expect(resultado).to eq []
  end
end
