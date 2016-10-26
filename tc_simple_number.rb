#File: tc_simple_number.rb

require_relative "simple_number"
require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

	def test_simple
		assert_equal(4, SimpleNumber.new(2).add(2))
		assert_equal(8, SimpleNumber.new(10).subtract(2))
		assert_equal(6, SimpleNumber.new(2).multiply(3))
		assert_equal(2, SimpleNumber.new(6).divide(3))
		assert_raise(ArgumentError){SimpleNumber.new(2).divideByZero(0)}
	end

	def test_typecheck
		assert_raise( ArgumentError ){SimpleNumber.new('a')}
	end

	def test_failure
		assert_not_equal(3, SimpleNumber.new(2).add(2), "Adding is not working")
	end
end
