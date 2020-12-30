class DoubleStrand
  def complementary_strip(strip)
    strip.tr 'GCTA', 'CGAT'
  end
end
