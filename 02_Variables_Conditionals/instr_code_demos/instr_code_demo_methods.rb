#IRB: Instructor's File
#TIME: 45 min
#INSTRUCTIONAL DESIGN NOTES:
# => This is a LONG code-along to get them the basics of defining/calling methods,
# => method parameters, and calling methods on strings/integers
# => It is necessary to give them this isolated intro before delving into
# => the complex teddit code-along

# Let's say we wanted to perform the task of multiplying 22 by 44 and giving the result
# We can do this:
>> 22 * 44
=> 968

# Great, but if we had to type that out each time, it would be inefficient
# So, let's try and save that code to a method...
# to define a new method, simply do:

>> def multiply
>>   22*44
>> end
=> nil

# NOTE: Running this does not return 3! How come?
# This is because defining a method does NOT run a method
# In other words, training the program for the tasks doesn't ask it
#    to do those tasks right away
# It simply creates the method and saves it for later

# ALSO NOTE: For those of you with prior programming experience...
# We did not need to do a 'return'. A method returns the result of the last line
# in the method automatically. This is a Ruby convention that you'll want to get used to.
# You can also add a return, but that is optional, and generally not practised.
# >> def multiply
# >>   return 22*44
# >> end
# => nil

# If we then call that method, by simply typing out its name:
>> multiply
=> 3

# Tada! The method did what we wanted, and returned the result of the calculation

# Now, let's say we wanted to make it a little smarter
# We now want it to add two numbers together, but we don't want it
# to just add the same ones all the time. we want it to add numbers we give to it.

# How is this possible? We can give things to a method using PARAMETERS.
# Here's an example:

>> def multiply(x, y)
>>  x*y
>> end
=> nil

# The above method will take two parameters passed to it,
# name the parameters as variables x and y
# and then multiply them together

# Here is how you would CALL that method:

>> multiply(22, 44)
=> 968

# Hurray! Our method works with parameters!
# Note that x and y are the names that the method gives to those variables
# You do not have to declare variables to pass them to the method, you can just
# pass LITERAL values to the method call and it will make variables for you

# In your program, you will write many different methods
# Of course, there are already many methods that exist in Ruby, and you can
# call them at any time

# Two of the most common methods we will use throughout this class are puts and gets.
# Let's start with puts...
# puts is a very simple method that takes a string, and will print it for you.
# The method name 'puts' semantically implies 'output string'

>> puts("hello!")
hello!
=> nil

# NOTICE that we now see two things happen:
# 1) the method ran, and printed out the string we gave it
# 2) the method returned nil. the result of a call to 'puts' is always nil.
# We have now learned that by calling a method, it will perform all the tasks you asked it
# and ALSO return a value at the end. The value is not always used, but it's
# important to learn that EVERY method always does two things when called:
#   1) Perform the tasks (code) in the method
#   2) Return a value (the result of evaluating the last line in the method)

# One more thing!
# When you are calling a method with parameters, using the paranthesis () is OPTIONAL

>> puts "hey!"
hey!
=> nil

# Great! that works too. There are some cases where you will need parenthesis,
# But in Ruby we try to skip them whenever possible
# of course, it's totally up to you. just do whatever feels right
# and is the most readable code. ultimately, your code should be easy to read.



# Now, let's look at gets
# Gets is a simple method that tells the program to prompt the user for input
# When you call gets, it will wait on the user to type in some text, and then the
# method will return a string of whatever text you typed

>> gets
Hi there
=> "Hi there\n"

# It captured my text! Notice that it also included a \n, which is a newline character
# from when i hit Enter to submit my texto
# gets does not take any parameters.

# So far, we have only been calling methods on their own
# However, you can also call methods on STRINGS and INTEGERS! Crazy, huh? Let's try.

>> "professor".capitalize
=> "Professor"

# Here we used a method called capitalize, but rather than calling it by itself,
# we called the method ON the string itself. We will learn later how that
# actually gets defined, but for now we just need to be aware that it is possible
# to call certain methods on strings and integers

>> "some sentence.\n".strip
=> "some sentence"

# Strings have a method on them called 'strip' that lets you remove leading
# and trailing newline characters.

>> 300.to_s
=> "300"

# Woah. Integer has a method on it called 'to_s' that returns the string
# version of the number. Perhaps this will be useful some day. . .


# CONGRATS! You are all set to do some more advanced coding with
# strings, methods and variables! Let's move on to the teddit strings exercise.
