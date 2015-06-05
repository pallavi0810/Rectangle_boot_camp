require 'spec_helper'

describe Length do

	context "conversion in mm" do
   it "with length 1m" do
     length_1 = Length.new({m: 1, cm: 0, mm: 0})
     expect(length_1.converted_dimension_in_mm).to eq(1000)
   end

    it "with length 1cm" do
      length_1 = Length.new({m: 10, cm: 1, mm: 0})
      expect(length_1.converted_dimension_in_mm).to eq(10010)
    end
  end
end