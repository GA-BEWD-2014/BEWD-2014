# Paul Mumma Midterm - Main

#Welcome the game organizer

require_relative 'lib/players'
require_relative 'lib/organizer'
require_relative 'lib/gameplay'

def create_player
puts "---- Player Details----"
puts "Player name: "
name = gets.strip
puts "Player's phone number: "
# HAVE TO FIND A WAY TO CHECK AND CLEAN INPUT
phone_number=gets.strip

Player.new(name,phone_number)
end


puts
puts "*=*=*=*=*=*= Welcome to the Automatic Charade Generator! *=*=*=*=*=*="
puts
#Ask the organizer to choose a set of roles for the game
puts "How many players (including you) are going to play charades?"
# TO DO: validate that input is a number >1
participant_count = gets.to_i

#Asks organizer to choose what category the game will draw from.
#TO DO: allow organizer to create his own category OR combine existing categories
puts "Which category do you want to draw from? Enter a number to choose one of the following:"
puts
puts "(1) Famous Greeks and Romans \n(2) Children's Book Characters \n(3) Silicon Valley Who's-Who"
chosen_topic = gets.to_i

game=Game.new(participant_count, chosen_topic)
puts
puts "Awesome! Who's going to play charades?"
puts

#Creates players and puts them into the player array
0.upto(participant_count-1) do |participant|
	player = create_player
	game.players[participant] = player
	puts "#{player.name} added successfully"
end

while 1==1
puts "Ready to Play? (y/n)"
answer = gets.chomp.downcase
if answer=="y"
	puts
	game.start_playing
	puts
	puts "All messages sent - now go play charades!"
	exit
elsif answer == "n"
	puts "No problem - just exit the program and start over"
	exit
else
	puts "Please enter a valid answer ('y' or 'n')"
end
end
