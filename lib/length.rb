class Length
  #Job: represents a single dimensional measurement in mm
	attr_reader :length_in_mm, :unit 
  MM = 'mm'
	def initialize (length_value, unit)
    @length_in_mm = length_value if unit == 'mm'
    @length_in_mm = length_value * 10 if unit == 'cm'
    @length_in_mm = length_value * 1000 if unit == 'm'
	end

  def +(other_length)
    Length.new(length_in_mm + other_length.length_in_mm, MM)
  end

  def *(number)
    Length.new(length_in_mm * number, MM)
  end

  def ==(other_length)
    length_in_mm == other_length.length_in_mm if other_length && self.class == other_length.class
  end

  def hash
    [length_in_mm,unit].hash
  end

  alias :eql? :==

end