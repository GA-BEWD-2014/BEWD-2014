#This is the renter's code for lab exercise on 06022014

def create_renter
  puts "There is a new renter"
  puts "What is the renter's name?"
  name = gets.strip

  puts "What is the #{name}'s credit score?"
  credit_score = gets.to_i

  puts "Is #{name} male or female?"
  gender = gets.strip

  Person.new(name, credit_score, gender)
end

