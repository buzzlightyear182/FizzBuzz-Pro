require_relative '../FizzBuzz.rb'
require 'pry'

describe "FizzBuzz" do

	it "returns same number" do
		num = "1"
		result = FizzBuzz.new.fizzbuzz(num)
		expect(result).to eq(1)
	end

	it "returns Fizz if single digit is divisible by 3" do
	  	num = "3"
	  	result = FizzBuzz.new.fizzbuzz(num)
	    expect(result).to eq("Fizz")
	end

	it "returns Buzz if single digit is divisible by 5" do
	  	num = "5"
	  	result = FizzBuzz.new.fizzbuzz(num)
	    expect(result).to eq("Buzz")
	end

	it "returns FizzBuzz if single digit is divisible by 15" do
	  	num = "15"
	  	result = FizzBuzz.new.fizzbuzz(num)
	    expect(result).to eq("FizzBuzz")
	end

	it "returns Nike if single digit is divisible by 13" do
	  	num = "13"
	  	result = FizzBuzz.new.fizzbuzz(num)
	    expect(result).to eq("Nike")
	end

	it "returns Zap if single digit is divisible by 7" do
	  	num = "7"
	  	result = FizzBuzz.new.fizzbuzz(num)
	    expect(result).to eq("Zap")
	end

	it "string of numbers" do
	  	num = "1,2,3"
		result = FizzBuzz.new.fizzbuzz(num)
	    expect(result).to eq("1,2,Fizz")
	end

	it "checks if number divisible by 3" do
	  	num = "6"
		result = FizzBuzz.new.fizzbuzz(num)
	    expect(result).to eq("Fizz")
	end

	it "string of numbers with divisibility" do
	  	num = "1,2,3,4,5,6"
		result = FizzBuzz.new.fizzbuzz(num)
	    expect(result).to eq("1,2,Fizz,4,Buzz,Fizz")
	end

	it "exactly 47 should return Forty-seven" do
	  	num = "1,2,3,47"
		result = FizzBuzz.new.fizzbuzz(num)
	    expect(result).to eq("1,2,Fizz,Forty-seven")
	end

end
