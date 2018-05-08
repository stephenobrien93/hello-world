#!/usr/bin/env ruby

class RockPaperScissorsGame

	def initialize(player1 = "Player 1", player2 = "Player 2")
		@player1 = player1
		@player2 = player2
	end

	def play
		options = ["Rock", "Paper", "Scissors"]
		p1_choice = options[rand(3)]
		p2_choice = options[rand(3)]
		puts "#{@player1} chooses #{p1_choice}!"
		puts "#{@player2} chooses #{p2_choice}!"
		if p1_choice == p2_choice
			puts "Result is a draw!"
		else
			if p1_choice == "Rock"
				if p2_choice == "Paper"
					puts "#{@player2} wins!"
				else
					puts "#{@player1} wins!"
				end
			elsif p1_choice == "Paper"
				if p2_choice == "Scissors"
					puts "#{@player2} wins!"
				else
					puts "#{@player1} wins!"
				end
			else
				if p2_choice == "Rock"
					puts "#{@player2} wins!"
				else
					puts "#{@player1} wins!"
				end
			end
		end
	end
end

if __FILE__ == $0
	puts "Enter Player 1's name:"
	player1 = gets.chomp
	if player1.empty?
		player1 = "Player 1"
	end
	puts "Enter Player 2's name:"
	player2 = gets.chomp
	if player2.empty?
		player2 = "Player 2"
	end
	rps = RockPaperScissorsGame.new(player1, player2)
	rps.play
end