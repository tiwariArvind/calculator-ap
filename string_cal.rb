class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    digits = digits(input)
    raise ArgumentError, "negative numbers not allowed: #{digits.select { |n| n < 0 }.join(', ')}" if digits.any? { |n| n < 0 }
    digits.reduce(0, :+)
  end
end