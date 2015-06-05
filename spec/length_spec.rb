require 'spec_helper'

describe Length do

	context "conversion to mm" do
    it "length = 10 m should be equal to 10000 mm" do
      length_1 = Length.new(10,'m')
      length_2 = Length.new(10000, 'mm')
      expect(length_1).to eq(length_2)
    end
    it "length = 100 cm should be equal to 1 m" do
      length_1 = Length.new(100,'cm')
      length_2 = Length.new(1,'m')
      expect(length_1).to eq(length_2)
    end
  end

  context "addition" do
    it "should return 3 mm for length1 = 1mm and length2 = 2mm" do
      length_1 = Length.new(1,'mm')
      length_2 = Length.new(2, 'mm')
      length_3 = Length.new(3, 'mm')
      expect(length_1 + length_2).to eq(length_3)
    end
  end

  context "multiplication with a constant" do
    it "should return 3 mm for length = 1mm constant 3" do
      length_1 = Length.new(1,'mm')
      number = 3
      length_2 = Length.new(3, 'mm')
      expect(length_1 * number).to eq(length_2)
    end
  end
end