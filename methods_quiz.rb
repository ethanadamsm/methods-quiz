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
	
	def closer_to(a, b, c)
		d1 = (a - b).abs
		d2 = (a - c).abs
		if d1 < d2
			b
		elsif d2 < d1 
			c
		elsif d1 == d2 
			0
		end
	end

	def two_as_one?(a, b, c)
		ab = a + b
		ac = a + c
		bc = b + c
		if bc == a || ac == b || ab == c
			true
		else
			false
		end
	end

	def pig_latinify(string) #I DID IT MR PADGE NEGUFDHSFI WQOOHE 1 minute to write tests 43 to write method
		string = string.downcase
		string = string.strip
		if string == "fuck" || string == "shit" || string == "ass" || string == "damn"
			string.gsub!("a", "*")
			string.gsub!("e", "*")
			string.gsub!("i", "*")
			string.gsub!("o", "*")
			string.gsub!("u", "*")
			if string[0] == "*" 
				string[1, string.length] + "way"
			else
				string[1, string.length] + string[0] + "ay"
			end
		else 
			if string[0] == "a" || string[0] == "e" || string[0] == "i" || string[0] == "o" || string[0] == "u"
				string[0, string.length] + "way"
			else
				string[1, string.length - 1] + string[0] + "ay"
			end 
		end
	end

end