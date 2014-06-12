# Paul Mumma Midterm - Main

#Welcome the game organizer

require_relative 'lib/players'
require_relative 'lib/gameplay'



def create_player
puts "---- Player Details----"
puts "Player name: "
name = gets.strip
puts "Player's phone number (no dashes, please!): "
# Grab user phone number, use (ugly!) loop to guard against invalid phone numbers
phone_number=gets.strip
until phone_number.length == 10
	puts "Please enter a valid phone number (including area code, excluding country code, no dashes)"
	phone_number = gets.strip
end

#Assigns player to a random charade from the topic array chosen by the organizer
charade_arrays=[
	["Augustus","Cleopatra","Dionysius","Hannibal","Lucretius", "Maecenas", "Plato", "Romulus", "Sappho", "Virgil"],
	["Alice in Wonderland", "Harriet the Spy", "James and the Giant Peach", "Frog and/or Toad", "Runaway Bunny", "Harry Potter", "Johnny Tremain", 
		"Snow White", "Paul Atreides", "One of the Norwegians in Snow Treasure"],
	["Mark Zuckerberg", "Cheryl Sandberg", "Jerry Yang", "Aaron Levie", "John Doerr", "Joi Ito", "Sergey Brin", "Travis Kalanick", "Marissa Meyer",
	 "Dr. Dre"]
]
assigned_charade=charade_arrays[@chosen_topic-1][rand(0..9)]

#Create the player
Player.new(name,phone_number, assigned_charade)
end


puts
puts "*=*=*=*=*=*= Welcome to the Automatic Charade Generator! *=*=*=*=*=*="
puts
puts "The idea is simple: rather than use pesky pieces of paper, let a computer assign charades to each player.\nThat way, no cheating!\nAnd since APIs are cool, we'll send each player their assignment using the Twilio SMS API. \nThink of it as a parlor game for the 21st century."
puts
puts "OK - let's get started!"
#Ask the organizer to choose a set of roles for the game
puts "How many players (including you) are going to play charades?"
puts "Player count: "
# Asks the organizer for the player count. Uses until loop to make sure total is greater than 1 and less than 11 (since there are only 10 choices in each assignment array)
participant_count = gets.to_i
until participant_count > 1 && participant_count < 11
	if participant_count < 2
	puts "Please enter a value greater than 1! (You can't play charades with yourself!)"
	elsif participant_count > 10
		puts "Please enter a value no greater than 10! (There are only so many charades to be assigned!)"
	end
	participant_count = gets.to_i
end
puts
#Asks organizer to choose what category the game will draw from.
#TO DO: allow organizer to create his own category OR combine existing categories
puts "Which category do you want to draw the charade assignments from? \nEnter a number to choose one of the following:"
puts
puts "(1) Famous Greeks and Romans \n(2) Children's Book Characters \n(3) Silicon Valley Who's-Who"
@chosen_topic = gets.to_i

game=Game.new(participant_count)
puts
puts "Awesome! Who's going to play charades?"
puts

#Creates players and puts them into the player array
0.upto(participant_count-1) do |participant|
	player = create_player
	game.players[participant] = player
	puts "#{player.name} added successfully"
end

puts "Ready to Play? Type 'y' when ready."
answer = gets.chomp.downcase
until answer == "y"
	puts "Please type 'y' when you're ready to play."
	answer = gets.chomp.downcase	
end
	game.start_playing
	puts
	puts "All messages sent - now go play charades!"
