class GamesController < ApplicationController
  def index
    @games = {
      "Magic 8 Ball" => magic_8_ball_path,
      "Secret Number" => secret_number_path,
      "Rock Paper Scissors" => rps_path
    }

    @rps_description = %{Rock-paper-scissors is a hand game usually played by two people, where players simultaneously form one of three shapes with an outstretched hand. The "rock" beats scissors, the "scissors" beat paper and the "paper" beats rock; if both players throw the same shape, the game is tied. Other names for the game in the English-speaking world include roshambo, and other orderings of the three items.[1][2]
The game is often used as a choosing method in a way similar to coin flipping, drawing straws, or throwing dice. Unlike truly random selection methods, however, rock-paper-scissors can be played with a degree of skill by recognizing and exploiting non-random behavior in opponents}
  end

  def magic_8_ball
    if params[:question]
      redirect_to magic_8_ball_play_path(params[:question][:question])
    end
  end

  def magic_8_ball_play
    @question = params["question"].humanize.titleize + "?"
    #This hash is filled with magic eight ball responses from Wikipedia.
    fortunes = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"]
     @answer = fortunes.sample
   end

   def secret_number
   end

   def rock_paper_scissors

   end

   def rock_paper_scissors_play
    rps = {
      "rock" => "scissors",
      "scissor" => "paper",
      "paper" => "rock"
    }
    @your_throw = params[:throw]
    @rails_throw = ["rock", "paper", "scissors"].sample
    if @your_throw == @rails_throw
      @status = "Tie!"
    elsif rps[@your_throw] == @rails_throw
      @status = "Win"
    else
      @status = "Lose"
    end
  end

  def secret_number_play
    @guess = params[:guess].to_i
    @answer = rand(10) + 1
    if @guess == @answer
      render "win"
    else
      render 'lose'
    end
  end
end
