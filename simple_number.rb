class SimpleNumber

	def initialize(num)
		raise ArgumentError, 'Argument is not numeric' unless num.is_a?(Numeric)
		@x = num
	end

	def add(y)
		@x + y
	end

	def subtract(y)
		@x - y
	end

	def multiply(y)
		@x * y
	end

	def divide(y)
		@x/y
	end

	def divideByZero(num)
		raise ArgumentError, 'Cannot Divide by zero' unless num == 0
		@x/num
	end
end
