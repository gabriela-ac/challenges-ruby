class RnaSplicer
  def splice(rna, introns)
    introns.each {|intron| rna.remove!(intron) }
    rna
  end
end
