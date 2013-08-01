################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise nested_conditionals
#Learning Objectives: Describe what is a nested conditional statements and write am if else statement in Ruby.
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################

programs_day_of_week = "tuesday"
programs_number = 3

# 1. Let's get input from our User and see if they can guess which day
#    of the week we are thinking of.
#
#    Ask the User, "What day of the week am I thinking of?" and capture
#    their input in the variable `guess`.

puts "What day of the week am I thinking of?"
guess = $stdin.gets.chomp.downcase

# 2. By default, `programs_day_of_week` is set to Tuesday. Let's compare
#    our variable to what the User inputted. If they got it right, tell
#    them "Correct!" otherwise tell them "Wrong!"

if programs_day_of_week == guess
  puts "Correct!"
else
  puts "Wrong!"
end

# 3. Now let's try seeing if two things are true at the same time.
#
#    Ask your User for a day of the week and then for a number. Remember
#    to cast your User's input appropriately when comparing values!
#
#    Then use a conditional to see if both the number and the day of
#    week are correct. If both are correct, tell the User "Correct!"
#
#    If only the number is correct, tell them "Number Correct!"
#
#    If only the day of the week is correct, tell them "Day of week
#    Correct!"
#
#    Otherwise, tell them "Wrong!"

puts "What day of the week am I thinking of?"
day_of_week_guess = $stdin.gets.chomp.downcase

puts "What number am I thinking of?"
number_guess = $stdin.gets.chomp.to_i

if programs_day_of_week == day_of_week_guess && programs_number == number_guess
  puts "Correct!"
elsif programs_day_of_week == day_of_week_guess && programs_number != number_guess
  puts "Number Correct!"
elsif programs_day_of_week != day_of_week_guess && programs_number == number_guess
  puts "Day of week Correct!"
else
  puts "Wrong!"
end

# 4. One last time, ask again for a day of the week and a number, except
#    this time only one of them needs to be correct to "win"! But if
#    they don't guess either correctly, they "lose"!

puts "What day of the week am I thinking of?"
day_of_week_guess = $stdin.gets.chomp.downcase

puts "What number am I thinking of?"
number_guess = $stdin.gets.chomp.to_i

if programs_day_of_week == day_of_week_guess && programs_number == number_guess
  puts "Both Correct!"
elsif programs_day_of_week == day_of_week_guess || programs_number != number_guess
  puts "One of them is Correct!"
else
  puts "Wrong!"
end
