class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    digits = digits(input)
    raise ArgumentError, "negative numbers not allowed: #{digits.select { |n| n < 0 }.join(', ')}" if digits.any? { |n| n < 0 }
    digits.reduce(0, :+)
  end

  def self.digits(input)
    input.gsub("\n", delimiter(input)).split(delimiter(input)).map{|x| x.to_i}
  end

  def self.delimiter(input)
    input[0,2] == '//' ? input[2,1] : ','
  end

end