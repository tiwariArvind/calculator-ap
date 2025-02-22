require './string_cal.rb'
RSpec.describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eql(0)
      end
    end
  end

  context "given two numbers separated by comma" do
    it "returns the sum of the two numbers" do
      expect(StringCalculator.add("3,4")).to  eql(7)
    end
  end

   context "given multiple numbers separated by comma" do
    it "returns the sum of all numbers" do
      expect(StringCalculator.add("1,2,3,4,5")).to eql(15)
    end
  end


  context "given numbers with newlines between them" do
    it "returns the sum of all numbers" do
      expect(StringCalculator.add("1\n2,3\n4,5")).to eql(15)
    end
  end

  context "Support different delimiters" do
    it "returns the sum of all numbers" do
      expect(StringCalculator.add("//;\n1;2;3")).to eql(6)
    end
  end

  context "given negative numbers" do
    it "raises an ArgumentError" do
      expect { StringCalculator.add("1,-2,3,-4,5") }.to raise_error(ArgumentError, "negative numbers not allowed: -2, -4")
    end
  end

end