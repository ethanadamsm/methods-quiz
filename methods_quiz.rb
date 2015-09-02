module MethodsQuiz
	
	def has_teen?(a, b, c)
		if a >= 13 && a <= 19 || b >= 13 && b <= 19 || c >= 13 && c <= 19
			true
		else
			false
		end
	end
	
	def not_string(string)
		words = string.split
		if words[0] == "not"
			string
		else
			"not " + string
		end
	end
	
	def icy_hot(a, b)
		if a < 0 && b > 100 || a > 100 && b < 0
			true
		else
			false
		end
	end
	
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end