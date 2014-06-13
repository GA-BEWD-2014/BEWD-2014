require 'lib/person'
require 'lib/secret_number'

class Game
def initialize(player, sec_num)
    @player = player
    @sec_num = sec_num
end

player = Person.new(name)
sec_num = SecretNumber.new

game = Game.new(player, secret_number)

end

number = (rand(1..10))
guess_remainder = 3

while guess_remainder > 0

	if guess < secret_number
		puts "Wrong, aim higher and please try again! Number of attempts left: " + guess_remainder.to_s + '.' 
		guess = gets.to_i

	elsif guess > secret_number
		
		puts "Wrong, aim lower and please try again! Number of attempts left: " + guess_remainder.to_s + '.' 
		guess = gets.to_i
	end
	guess_remainder -= 1

end

if guess == number
	puts 'You are correct, the number is ' + number.to_s + '!'
else 
	puts "Sorry, you lost and have zero psychic abilities! The number was " + number.to_s + '.' 
end

#Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.