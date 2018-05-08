#!/usr/bin/env ruby

class DiceSimulator

	#Create the object
	def initialize (sides = 6, rolls = 1)
		@sides = sides
		@rolls = rolls
	end

	#Method to roll the dice
	def roll
		puts "Rolling a #{@sides} sided die #{@rolls} times."
		#puts 1 + rand(@sides)
		i = 0
		total = 0
		while i < @rolls do
			roll_value = 1 + rand(@sides)
			total = total + roll_value
			i += 1
			puts "Roll number #{i}: #{roll_value}"	
		end
		puts "Total of all rolls: #{total}"
	end
end

if __FILE__ == $0
	puts "Please enter the number of sides on the die:"
	num_sides = gets.to_i
	puts "Please enter the number of rolls:"
	num_rolls = gets.to_i
	ds = DiceSimulator.new(num_sides, num_rolls)
	ds.roll
end