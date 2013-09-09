class SecretNumbersController < ApplicationController
  def new
  end

  def show
    # get a random number from 1-10
    @secret_number = rand(5)+1

    # get the user chosen number from params
    # the param is named 'id' because of route convention
    # lastly, we want to turn it from a String to an Integer
    # that way, we can compare it to the secret number (which is an int)
    @chosen_number = params[:id].to_i
  end
end
