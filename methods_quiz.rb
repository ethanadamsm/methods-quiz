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
	
	# TODO - write icy_hot?
	
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end