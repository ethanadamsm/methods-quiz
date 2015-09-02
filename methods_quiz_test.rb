require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	def test_has_teen
		assert_equal false, @m.has_teen?(1, 2, 3)
		assert_equal true, @m.has_teen?(13, 1, 1)
		assert_equal true, @m.has_teen?(19, 1, 1)
		assert_equal true, @m.has_teen?(1, 13, 1)
		assert_equal true, @m.has_teen?(1, 19, 1)
		assert_equal true, @m.has_teen?(1, 1, 13)
		assert_equal true, @m.has_teen?(1, 1, 19)
	end

	def test_not_string
		assert_equal "not hello", @m.not_string("hello")
		assert_equal "not hello", @m.not_string("not hello")
	end

	def test_icy_hot
		assert_equal true, @m.icy_hot(-1, 101)
		assert_equal true, @m.icy_hot(101, -1)
		assert_equal false, @m.icy_hot(-1, -1)
		assert_equal false, @m.icy_hot(101, 101)
		assert_equal false, @m.icy_hot(50, 50)
	end

	def test_closer_to
		assert_equal 5, @m.closer_to(15, 5, 1)
		assert_equal 23, @m.closer_to(20, 16, 23)
		assert_equal 0, @m.closer_to(10, 5, 15)
	end

end
