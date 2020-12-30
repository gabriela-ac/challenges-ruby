require 'spec_helper'
require 'sqlite3'

describe Sql do
  before do
    system("rm db/database.db")
    db = SQLite3::Database.open "db/database.db"
    db.execute <<-SQL
      CREATE TABLE Pessoas(
       Nome varchar(255),
       Idade int,
       Cidade varchar(255),
       RG varchar(255)
      );
    SQL
    db.execute <<-SQL
      CREATE TABLE Livros(
        Titulo varchar(255),
        Autora varchar(255),
        Paginas int,
        Editora varchar(255)
      );
    SQL
    rescue SQLite3::Exception => e
      puts e
    ensure
      db.close if db
  end

  it 'Insere Carlos na tabela Pessoas, idade 24, cidade Belo Horizonte, rg 25778853009' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.insert_carlos)
    resultado = db.execute("SELECT * FROM Pessoas WHERE nome='Carlos'")
    expect(resultado).to eq [['Carlos', 24, 'Belo Horizonte', '25778853009']]
  end

  it 'Insere Geovana na tabela Pessoas, idade 66, cidade Maringá, rg 41916630030' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.insert_geovana)
    resultado = db.execute("SELECT * FROM Pessoas WHERE nome='Geovana'")
    expect(resultado).to eq [['Geovana', 66, 'Maringá', '41916630030']]
  end

  it 'Insere título Insubmissas lágrimas de mulheres na tabela Livros, somente com autora Conceição Evaristo' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.insert_insubmissas)
    resultado = db.execute("SELECT * FROM Livros WHERE titulo='Insubmissas lágrimas de mulheres'")
    expect(resultado).to eq [['Insubmissas lágrimas de mulheres', 'Conceição Evaristo', nil, nil]]
  end

  it 'Insere título Outros jeitos de usar a boca na tabela Livros, somente com autora Rupi Kaur e editora Planeta' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.insert_outros)
    resultado = db.execute("SELECT * FROM Livros WHERE titulo='Outros jeitos de usar a boca'")
    expect(resultado).to eq [['Outros jeitos de usar a boca', 'Rupi Kaur', nil, 'Planeta']]
  end
end
