#IRB: Instructor's File
#TIME: 45 min
#INSTRUCTIONAL DESIGN NOTES:
	# => This is a LONG code-along to get them the basics of defining / calling methods, parameters, and methods on strings/integers

	# => It is necessary to give them this isolated intro before delving into the Teddit strings code demo. 

	# => If there are students that have programmed in another language highlight some of the differences with ruby methods.

	# => Students have a matching file. Encourage them to take notes in the code_demo_methods.rb while you code in irb.


#1 - Let's say we wanted to perform the task of multiplying 22 by 44  
###########
###########
	>> 22 * 44
	=> 968

#2 - Great, what if we wanted to multiply 22*4 again. If we had to type that out each time, it would be inefficient
# So, let's try and save that code to a method...
###########
###########

	>> def multiply
	>>   22*44
	>> end
	=> nil

# NOTE: Running this does not return 968! How come?

	########Suggested Teaching Script########
	### This is because defining a method does NOT run a method
	### In other words, training the program for the tasks doesn't ask it to do those tasks right away.
	### It simply creates the method and saves it for later.

	########Suggested Teaching Script########
	### For those of you with prior programming experience...
	### We did not need to do a 'return'. A method returns the result of the last line
	### in the method automatically. This is a Ruby convention that you'll want to get used to.
	### You can also add a return, but that is optional, and generally not practiced.
	# def multiply
	# 	return 22*44
	# end


##3 - Let's call that method, by simply typing out its name:
###########
###########
	>> multiply
	=> 968


##4 - Now, let's say we wanted to make it a little smarter. Our  method will take two parameters passed to it.
# Let's name the parameters as variables x and y
# and then multiply them together.
###########
###########
	>> def multiply(x, y)
	>>  x*y
	>> end
	=> nil

	########Suggested Teaching Script########
	### We now want it to add two numbers together, but we don't want it
	### to just add the same ones all the time. we want it to add numbers we give to it.
	### How is this possible? We can give things to a method using PARAMETERS.




#5 - Now CALL that method:
###########
###########
	>> multiply(22, 44)
	=> 968

# Hurray! Our method works with parameters!

#6 - Other People's methods. Two of the most common methods we will use throughout this class are puts and gets.
# Let's start with puts...
###########
###########

	>> puts("hello!")
	hello!
	=> nil

	########Suggested Teaching Script########
	### Puts is a very simple method that takes a string, and will print it for you.
	### The method name 'puts' semantically implies 'output string'
	### In your program, you will write many different methods
	### Of course, there are already many methods that exist in Ruby, and you can call them at any time.


	########Suggested Teaching Script########
	# NOTICE that we now see two things happen:
	# 1) the method ran, and printed out the string we gave it
	# 2) the method returned nil. the result of a call to 'puts' is always nil.
	# We have now learned that by calling a method, it will perform all the tasks you asked it
	# and ALSO return a value at the end. The value is not always used, but it's
	# important to learn that EVERY method always does two things when called:
	#   1) Perform the tasks (code) in the method
	#   2) Return a value (the result of evaluating the last line in the method)

#7 - One more thing! - When you are calling a method with parameters, using the parenthesis () is OPTIONAL
###########
###########

	>> puts "hey!"
	hey!
	=> nil

	########Suggested Teaching Script########
	### There are some cases where you will need parenthesis,
	### But in Ruby we try to skip them whenever possible
	### of course, it's totally up to you. just do whatever feels right
	#### and is the most readable code. ultimately, your code should be easy to read.


#8 - Now, let's look at gets
###########
###########

	>> gets
	Hi there
	=> "Hi there\n"


	########Suggested Teaching Script########
	### Gets is a simple method that tells the program to prompt the user for input
	### When you call gets, it will wait on the user to type in some text, and then the
	### method will return a string of whatever text you typed. 
	### It captured my text! Notice that it also included a \n, which is a newline character
	### from when i hit Enter to submit my text gets does not take any parameters.

#9 - So far, we have only been calling methods on their own
# However, you can also call methods on STRINGS and INTEGERS! Crazy, huh? Let's try.
###########
###########

	>> "professor".capitalize
	=> "Professor"

	>> "some sentence.\n".strip
	=> "some sentence"

	########Suggested Teaching Script########
	# Here we used a method called capitalize, but rather than calling it by itself,
	# we called the method ON the string itself. We will learn later how that
	# actually gets defined, but for now we just need to be aware that it is possible
	# to call certain methods on strings and integers
	# Strings have a method on them called 'strip' that lets you remove leading
	# and trailing newline characters.

>> 300.to_s
=> "300"

# Woah. Integer has a method on it called 'to_s' that returns the string
# version of the number. Perhaps this will be useful some day. . .


