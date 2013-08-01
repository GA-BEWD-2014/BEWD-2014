################################################################################
#
# Introduction to Ruby on Rails
#
# Conditionals
# Learning Objective: Describe what is a decision in programming and write a basic conditional statement
# Topics Covered: If statements, equality and conditional operators
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################

a = 3
b = 5
c = 7

# 1. If 'a' is equal to 3 print "Yes!"

if a == 3
  puts "Yes!"
end

# 2. Test if a is equal to 3 and b is equal
#    to 5 using `&&`. If so, print "Yes!"

if a == 3 && b == 5
  puts "Yes!"
end

# 3. Print "At least one of them is true! if 'a' is equal to 3 OR 'b' is equal to 15. 
if a == 3 || b == 15
  puts "At least one of them is true!"
end

# 4. Using parentheses,
#    check to see if 'a' is equal to 2 and 'b' is equal to 11... OR 'c' is
#    equal to 7. 


if (a == 2 && b == 11) || c == 7
  puts "c is 7, so my expression is true!"
end

# Because c is equal to 7, the whole expression will
#    evaluate to true!