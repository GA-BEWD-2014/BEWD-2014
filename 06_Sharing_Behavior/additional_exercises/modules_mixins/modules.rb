################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 6.1
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################

responses = Hash.new

responses[:positive] =  [ "It is certain", "It is decidedly so",
                          "Without a doubt", "Yes - definitely",
                          "You may rely on it", "As I see it, yes",
                          "Most likely", "Outlook good", "Yes",
                          "Signs point to yes" ]

responses[:neutral] =  [ "Reply hazy, try again", "Ask again later",
                         "Better not tell you now", "Cannot predict now",
                         "Concentrate and ask again" ]

responses[:negative] = [ "Don't count on it", "My reply is no",
                         "My sources say no", "Outlook not so good",
                         "Very doubtful" ]

################################################################################
#
# 1. Create a new Module called RandomArrayValueFromHash
#
#    module RandomArrayValueFromHash
#
#   end
#
# 2. Create a new method in the module called, `pick_random_value` that
#    accepts a single parameter called `responses`.
#
# 3. Copy the same logic (without the puts statement) from a previous exercise
#    that was in `forecast_future` into the `pick_random_value method`.
#
# 4. Include your new module so that it loads the method.
#
# 5. Run the pick_random_value method with the `responses` Hash from above
#    and print its response to the screen.
#
#    puts RandomArrayValueFromHash.pick_random_value(responses)
#
################################################################################
#
# Student's Solution:
#
################################################################################

