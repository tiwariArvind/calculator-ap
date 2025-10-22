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

end