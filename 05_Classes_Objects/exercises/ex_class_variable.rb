#Exercise - Understanding Object-Oriented Code

# => Pair Program
# Step 1: Test your knowledge! Without running the following code, guess what the output would be. 
# Step 2: Run the code, were you correct? Write in less than 5 lines explaining what is happening in the code. 
#         You will be called on during class. Your explanation should include the words => "class variables", "instance variables"
#         The Ruby docs are your friend.


class SuperHero
  @@superheros = []
  def initialize(name)
    @name = name
    @@superheros << self
  end

  def superheros
    @@superheros
  end

  def to_s
    @name
  end 

end 

superman= SuperHero.new("Clark Kent")
ironman = SuperHero.new("Tony Stark")

puts ironman.superheros

