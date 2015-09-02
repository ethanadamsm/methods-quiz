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

end
