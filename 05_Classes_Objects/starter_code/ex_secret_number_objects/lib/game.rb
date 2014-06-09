# require_relative '../main'
require 'lib/person'
require 'lib/secret_number'

class Game

attr_accessor :player_name

	#Initialize the Player class.
	def ask_for_name
		puts "What is your name?"
		player_name = gets.chomp
		$person = Person.new(player_name)
	end	

	#Welcome player and inform them of the game rules.
	def welcome	
		puts "Enjoy the Game #{$person.show_name}"
		puts "This game is about guessing a '\Secret Number'\ between 1-10. You have 3 attempts to identify the '\Secret Number'\. 
		 You win if you guess the '\Secret Number'\ withing the 3 attempts, otherwise you lose the game!"
	end	
	
	# Prompt the user to choose a number, verify if the user guessed correctly.
	def choose_number
		puts "Choose a number between 1-10"
		$input = gets.chomp.to_i
		if $input > 10 || $input < 1
			puts "Invalid number. Please use a number between 1-10"
			choose_number
		end
	end	
	
	def compare_number
		secret_number = SecretNumber.new
		
		counter = 0		
		attempts = 3

		while counter < attempts do

		#call choose_number method	
		choose_number

		# guess 
		counter += 1
		puts "Your #{counter}st guess is #{$input}"

			# player guesses correctly and wins game
			if $input == secret_number.sec_num
					# wins after 1st try
					if counter == 1
						puts "Congrats you WIN after your #{counter}st guess! The secret number was #{secret_number}!"
						break
					# wins after 2nd try
					elsif counter == 2
						puts "Congrats you WIN after your #{counter}nd guess! The secret number was #{secret_number}!"
						break
					# wins after 3rd try
					elsif counter == 3
						puts "Just in time. You WIN after your #{counter}rd guess! The secret number was #{secret_number}!"
						break
					# failover case in case sth went wrong
					else
						puts "Something went wrong. Please try again"
						break
					end	
			
			# player guesses number too high
			elsif $input > secret_number.sec_num && attempts - counter != 0
					puts "The secret number is smaller. You have #{attempts - counter} guesses left"
			# player guesses number too low
			elsif $input < secret_number.sec_num && attempts - counter != 0
					puts "The secret number is larger. You have #{attempts - counter} guesses left"
			# player looses game
			else
					puts "You LOST! The secret number was #{secret_number.sec_num}. Next time :)"	
			end

		end
	

	end	


end
