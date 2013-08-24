$:.unshift (File.dirname(__FILE__))
require 'lib/game'

puts `clear`
puts "Welcome to Secret Number!"
puts "To begin, please enter your name:"

player_name = gets.chomp.capitalize

game = Game.new(player_name)
game.start
