class Rectangle 
	#Job: Defines a 2D rectangle with its dimensions in various metric systems
  MM = 'mm'
	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end

	def perimeter
    (@length + @breadth) * 2
	end

end