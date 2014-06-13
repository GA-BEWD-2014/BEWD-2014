class SecretNumber

	attr_accessor :sec_num

  def initialize(sec_num)
  	@sec_num = rand(1..10)
  end
end




# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.