################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise dataTypes_Strings
# to be completed individually and then reviewed together
#
################################################################################

# 1. Create 4 new variables, `month`, `day`, `day_of_week` and `year`.
#    Assign each variable appropriately for today's date.
#
#    Example: Tuesday, September 19, 1985
#
#    `Month` should be a Symbol, `day` should be an Integer, `day_of_week`
#    should be a String, and `year` an Integer.

month = :September
day = 19
day_of_week = "Tuesday"
year = 1985

# 2. Construct a sentence of Today's date by concating the above
#    variables like the example. Remeber to cast appropriately.

puts day_of_week + ", " + month.to_s + " " + day.to_s + ", " + year.to_s

# 3. Now, construct the same sentence using String interpolation
#    instead!
#
#    Hint: Do you still need to cast your variables to Strings?

puts "#{day_of_week}, #{month} #{day}, #{year}"

# 4. Let's try and mix things up a bit! Now we are going to take input
#    from the command line and change it so that we can display whatever
#    date the User would like to display.
#
#    prompt the user to enter the day of the week, and store the response in a variable day_of_week

puts "Enter a day of the week:"

day_of_week = $stdin.gets.chomp

# 6. Now ask for the month and capture that data in the variable month.

puts "Enter the name of a month:"

month = $stdin.gets.chomp

# 7. Ask for the day and capture that data in the variable day.

puts "Enter the day:"

day = $stdin.gets.chomp

# 8. And finally, do the same for the year!

puts "Enter the year:"

year = $stdin.gets.chomp

# 9. Use String interpolation to display the inputted full date to the user.

puts "#{day_of_week}, #{month} #{day}, #{year}"
