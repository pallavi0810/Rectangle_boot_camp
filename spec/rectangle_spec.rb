require 'spec_helper'

describe Rectangle do

	context "Perimeter" do

		it "with length 1m and breadth 2.5m should be 7m" do
			length = Length.new(1,'mm')
      breadth = Length.new(2, 'mm')
      expected_perimeter = Length.new(6, 'mm')
			rectangle = Rectangle.new(length, breadth)
			expect(rectangle.perimeter).to eq(expected_perimeter)
		end

	end

end