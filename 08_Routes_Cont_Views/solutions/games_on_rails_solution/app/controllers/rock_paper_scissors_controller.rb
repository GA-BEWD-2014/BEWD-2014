class RockPaperScissorsController < ApplicationController
  def new
    @throws = get_throws
  end

  def show
    @throws = get_throws
    # use a random number to set a random throw for the Game
    @game_throw = @throws[rand(3)]
    # use the params[:id] again to set the user's throw
    @user_throw = @throws[params[:id].to_i]
    # calculate the result of the game based on the throws
    @result = game_result(@game_throw, @user_throw)
  end

  private

    def get_throws
      ['rock', 'paper', 'scissors']
    end

    def game_result(game_throw, user_throw)
      # create a hash which maps each throw (key)
      # to the throw that it beats (value)
      # e.g. beats["rock"] => "scissors" implies rock beats scissors
      beats = {
        "rock" => "scissors",
        "scissor" => "paper",
        "paper" => "rock"
      }

      # beats[@user_throw] is the throw the user can beat
      if beats[@user_throw] == @game_throw
        # if the game's throw is the one that the
        # user's throw beats, they win!
        @status = :win
      elsif user_throw == game_throw
        # if both throws are the same, it's a tie
        @status = :tie
      else
        # otherwise, the user loses
        @status = :loss
      end
    end
end
