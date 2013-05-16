################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise variables_arithmetic
# Learning Objectives: Predict output of basic arithmetic on variables in Ruby.
# Use this example to further explain variables and arithmetic operators.
#
################################################################################
#
# Below are 3 variables that we will use in this exercise: a, b, and c
#
################################################################################

a = 4
b = 2
c = 5

# 1. Translate a^2 + c to Ruby code so that when printed, the result is 21

puts a**2 + c

# 2. Translate a x b + c into Ruby so that the result is 13
 
puts a * b + c
 
# 3. Change the code in #2 to display the result 28 by adding
#    parenthesies

puts a * (b + c)
 
# 4. Display the result of 2 / 5

puts 2 / 5

# 5. Display the result of 2.0 / 5

puts 2.0 / 5

# 6. What are the differences between using an Integer versus a Float?
#
# When you divide by an Integer, you get an Integer back, when
# a Floating point, it will give the result as a Floating point.

# 7. Below are four expressions: two displaying even numbers modulus 2
#    and two displaying odd numbers modules 2.

puts 4 % 2
puts 414 % 2
puts 9 % 2
puts 1311 % 2

# 8. Do you notice a pattern with modulus 2 when dealing with even versus
#    odd numbers?
#
# If the number is even, when you use modulus 2, you will get 0. If it
# is odd, you will get 1. That is because even numbers are divisible by
# 2 and have no remainders. Odd numbers cannot be evenly divided and are
# left with 1 remainder.
