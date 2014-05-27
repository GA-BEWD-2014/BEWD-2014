###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################



# ask for player name
puts "Hello, Welcome to the '\Secret Number'\ Game created by Andreas"
puts "What is your name?"
player_name = gets.chomp


# define number of attempts
attempts = 3

# into to game
puts "Enjoy the Game #{player_name}"
puts "This game is about guessing a '\Secret Number'\ between 1-10. You have #{attempts} attempts to identify the '\Secret Number'\. 
 You win if you guess the '\Secret Number'\ withing the 3 attempts, otherwise you lose the game!"

# generate random secret number between 1-10
ran_num = rand(1..10)

# set variable counter
# puts "Ran num = #{ran_num} (for testing only)"
counter = 0

# let players guess 3 times
while counter < attempts do

		# guess 
		counter += 1
		puts "Input your #{counter} number"
		guess = gets.chomp.to_i
		puts "Your #{counter}st guess is #{guess}"

		# player guesses correctly and wins game
		if guess == ran_num
				# wins after 1st try
				if counter == 1
					puts "Congrats you WIN after your #{counter}st guess! The secret number was #{ran_num}!"
					break
				# wins after 2nd try
				elsif counter == 2
					puts "Congrats you WIN after your #{counter}nd guess! The secret number was #{ran_num}!"
					break
				# wins after 3rd try
				elsif counter == 3
					puts "Just in time. You WIN after your #{counter}rd guess! The secret number was #{ran_num}!"
					break
				# failover case in case sth went wrong
				else
					puts "Something went wrong. Please try again"
					break
				end	
		
		# player guesses number too high
		elsif guess > ran_num && attempts - counter != 0
				puts "The secret number is smaller. You have #{attempts - counter} guesses left"
		# player guesses number too low
		elsif guess < ran_num && attempts - counter != 0
				puts "The secret number is larger. You have #{attempts - counter} guesses left"
		# player looses game
		else
				puts "You LOST! The secret number was #{ran_num}. Next time :)"	
		end
end
# 		more text
