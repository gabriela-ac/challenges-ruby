class Sql
  def insert_carlos
    read_file('insert_carlos.sql')
  end

  def insert_geovana
    read_file('insert_geovana.sql')
  end

  def insert_insubmissas
    read_file('insert_insubmissas.sql')
  end

  def insert_outros
    read_file('insert_outros.sql')
  end

  private

  def read_file(file)
    File.open(Dir.pwd + "/queries/#{file}").read
  end
end
