################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Arrays Solutions
# Learning Objective: Introduce arrays and ruby syntax.
# This is a code along activity, and can serve as a reference of arrays syntax. 
#
################################################################################

# 1. Create an array that stores three different months ("January, February, March")
months = ["January", "February", "March"]

# 2. Add two more months to your array in a single expression.
months << ["April", "May"]
puts months

# 3. Convert your name to an array, and display it, in a single expression
puts %w{Leo M. Schuman}

# 4. Remove and display the last value in the months array.
# Was April and May removed? why or why not.
puts months.pop 