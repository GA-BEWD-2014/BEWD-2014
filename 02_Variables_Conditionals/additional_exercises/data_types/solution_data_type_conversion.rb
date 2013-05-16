################################################################################
#
# Introduction to Ruby on Rails
#
# data_types
# 
# Learning Objectives: Describe what is a data type and dynamically change types in code. 
# Topics covered: single expression declaration, type casting.
#
################################################################################
#
# 
################################################################################

# 1. Create three variables, 'a', 'b', and 'c' and assign values to each variable using
#    parallel assignment so that a is 5, b is 7 and c is 9.

a, b, c = 5, 7, 9

# 2. Print the result of 'a' divided by 'b'.

puts a / b

# 3. Overwrite variable b and convert the original value of 'b' to a float
# number.

b = b.to_f

# 3. Write the same expression again from #2.

puts a / b

# 4. What do you notice?
#
# Because we used the method .to_f, b is now a Float instead of an
# Integer. When we divide by a Float, we get a Floating number as
# a result.

# 5. Declare a new variable called `name` and assign it a String of your
#    first name.

name = "Rachel"

# 6. Write an expression that adds the variables `name` and `a`
#
 #puts name + a

# 7. What happened?
#
# Because a is an Integer, it cannot be simply concatenated to a String.
# We must first cast a into a String.

# 8. Comment out problem 6 and rewrite it below, casting a into a String.
puts name + a.to_s
