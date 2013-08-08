require 'lib/Person'
require 'lib/Secret_Number'

class Game
  attr_accessor :new_game, :new_player, :guesses_left

  def initialize(name)
    @new_game = Secret_Number.new
    @new_player = Person.new(name)
    @guesses_left = 3
    game_time
  end

  def game_time
    puts "Welcome #{@new_player.name}! You get 3 chances to guess the Secret Number between 1 and 10."

    while @guesses_left != 0
      play_game
      break if @guess == @new_game.number
    end
  end

  def play_game
    puts "What is your guess?"
    @guess = gets.to_i
    @guesses_left -= 1
    puts `clear`
    check_guess(@guess)
  end

  def check_guess(guess)
    if guess == @new_game.number
      puts "You win!"
    elsif guess != @new_game.number && guesses_left != 0
     if guess < @new_game.number
        puts "You guessed #{guess}, Guess higher! Number of guesses left: #{guesses_left}"
      elsif guess > @new_game.number
        puts "You guessed #{guess}, Guess lower! Number of guesses left: #{guesses_left}"
      end
    else
        puts "Game Over! The secret number was #{@new_game.number}"
    end
  end
end