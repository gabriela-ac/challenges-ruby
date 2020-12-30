class Arrays
  def inverse_strings(array)
    array - array.map(&:reverse)
  end
end

