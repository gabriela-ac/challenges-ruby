class QuadradoPolibio

  POLIBIO = {
    "11"=>"a", "12"=>"b", "13"=>"c", "14"=>"d", "15"=>"e", "16"=>"f", "21"=>"g", "22"=>"h", "23"=>"i", "24"=>"j", "25"=>"k", "26"=>"l", "31"=>"m", "32"=>"n", "33"=>"o", "34"=>"p", "35"=>"q", "36"=>"r", "41"=>"s", "42"=>"t", "43"=>"u", "44"=>"v", "45"=>"w", "46"=>"x", "51"=>"y", "52"=>"z", "53"=>"0", "54"=>"1", "55"=>"2", "56"=>"3", "61"=>"4", "62"=>"5", "63"=>"6", "64"=>"7", "65"=>"8", "66"=>"9"
  }


  def criptografar(texto)
    texto.downcase.split('').map { |letra| POLIBIO.invert[letra] }.join 
  end
  

  def descriptografar(texto)
    texto.scan(/../).map { |numero| POLIBIO[numero] }.join
  end

end