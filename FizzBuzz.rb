class FizzBuzz

	attr_accessor :set

	def initialize
		@set = {}
		@set[3] = "Fizz"
		@set[5] = "Buzz"
		@set[7] = "Zap"
		@set[13] = "Nike"
		@set[15] = "FizzBuzz"
		@set[47] = "Forty-seven" 	# If the number is exactly 47, should print "Forty-seven"
	end

	def fizzbuzz(num)
		if num.include? ','
			stringReceived(num)
		else
			singleDigit(num)
		end
	end

	def stringReceived(num)
		finalArray = []
		num = numToArray(num)
		num.each do |x|
			finalArray << checkNumber(checkX(x))
		end
		finalArray.join(",")
	end

	def singleDigit(num)
		num = num.to_i
		checkNumber(checkX(num))
	end

	def numToArray(num)
		newArray = num.split(",")
		numArray = []
		newArray.each do |item|
			numArray << item.to_i
		end
		numArray
	end

	def checkX(x)
		keyArray = @set.keys
		result = x
		tempArray = []
		keyArray.each do |key|
			if x % key == 0
				tempArray << key
				result = tempArray.last
				specialCase(x,result)
			end
		end
		result
	end

	def specialCase(x, result)
		if result == 3
			result = 15 if x % 5 == 0
		end
	end

	def checkNumber(num)
		if @set.has_key?(num)
			value = @set[num]
		else
			value = num.to_i
		end
	end

end