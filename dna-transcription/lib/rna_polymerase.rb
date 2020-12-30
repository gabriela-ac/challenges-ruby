class RnaPolymerase
  def transcribe(dna, beginning, ending)
    transcricao_rna = { "A" => "U", "T" => "A", "G" => "C", "C" => "G" }

      if (dna.length > 0 && beginning.length > 0 && ending.length > 0) && (dna.include?(beginning) && dna.include?(ending))
        dna = dna[dna.index(beginning)..dna.length-1]
        dna = dna[(dna.index(beginning) + beginning.length)..(dna.index(ending)-1)].gsub(/\w/, transcricao_rna)
      else 
        "Sequence not found"
      end

  end
end