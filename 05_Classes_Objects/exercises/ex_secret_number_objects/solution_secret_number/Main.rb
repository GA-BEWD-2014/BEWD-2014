$:.unshift (File.dirname(__FILE__))
require 'lib/Game'

def start_game
  puts "Welcome! This game is brought to you by Eddie Washington."
  puts "Please provide your name:"
  input = gets.chomp.capitalize

  game = Game.new(input)
end

start_game