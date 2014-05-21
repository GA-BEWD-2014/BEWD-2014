<img id="icon" src="https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png">

#BEWD - Collections & Loops

###Instructor Name

---


##Agenda

*	Iteration - Loops
*	Collections
	*	Arrays
	*	Hashes


---


##Iteration
###Repetition
###Repetition
###Repetition



---


##Iteration (Ruby-esque Loops)
###Times Iterator

	3.times do
		puts "going…"
	end
	puts "gone"

	# going...
	# going...
	# going...
	# gone
---


##Iteration (Ruby-esque Loops)
###.upto

	1.upto(3) do |num|
		puts "#{num}.going"
	end

	# 1. going
	# 2. going
	# 3. going

---


##Iteration (Ruby-esque Loops)
###.downto

	3.downto(1) do |guess|
		puts "You have #{guess} guesses left"
	end

	# You have 3 guesses left
	# You have 2 guesses left
	# You have 1 guesses left

---



##Iteration (Ruby-esque Loops)
###Less common in Ruby

*	These loops are less common in Ruby, but good to know as a programmer.

	*	X.times
	*	upto
	*	downto

* For additional help with syntax, see the Resources at the end of the slides.

---


##Conditional Loops

	count = 10
	while count > 0
		puts "Looping"
		count -=1
	end

	count = 10
	until count < 1
		puts "Looping"
		count -= 1
	end

	count = 10
	loop do
		break if count < 1
		puts "Looping"
		count -= 1
	end

---


<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Loop

---


##Iteration Recap
###Recap

* 	Iteration in programming allows us to keep our code DRY
* 	Loops are used to repeat lines of code
* 	Common or Ruby-esque loops are
	*	.times
	*	.upto
	*	.downto
	* 	.each (we will see in a moment)

---


##Collections
###Working with Collections in Ruby

---


##Collections
###Arrays

![accordion folder](../../assets/ruby/accordian.jpg)

---


##Arrays
###Find by Index

![Array Indexing](../../assets/ruby/array_index_diagram.png)

---


##Arrays
###Find by Index

	my_array = ["NYC", "LA", "SYD", "LDN"]
	my_array[0] #"NYC"
	my_array[1] #"LA"
	my_array[-1] #"LDN"

---


##Arrays
###Find by Position

![Array position](../../assets/ruby/arrays_position_diagram.png)

---


##Arrays
###Find by Position

	my_array = ["NYC", "LA", "SYD", "LDN"]
	my_array.first #"NYC"
	my_array.last #"LDN"


	# In rails...
	# Will not work in IRB
	my_array = ["NYC", "LA", "SYD", "LDN"]
	my_array.second
	my_array.third
	my_array.forth
	my_array.fifth
	my_array.forty_two # known as the reddit

---


##Arrays
###Array Methods

	name = "Salman"
	name.upcase

	my_array = ["NYC", "LA", "SYD", "LDN"]
	my_array.reverse

---


<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Arrays

to irb!


---


<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Arrays

---


##Arrays
###Recap


*	A collection of data
*	Can search an array by index or position
*	Arrays are objects and therefore have methods.

---


##Collections
###Hashes

![Labeled Accordion](../../assets/ruby/labeled_accordian.jpeg)

*	Often referred to as dictionaries
*	Each entry in a hash needs a *key* and a *value*
*	If you access a hash at a specific key, it will return the value at that key

---


##Hashes
###Find by key

	ga_markets = {"NYC" => "New York City", "LA" => "Los Angeles", "SYD" => "Sydney", "LDN" => "London"}

	ga_markets["NYC"]
	ga_markets["LA"]
	ga_markets["SYD"]

"New York City"

"Los Angeles"

"Sydney"

---


##Hashes
###Setting Values

	user_hash = {}
	user_hash["name"] = "Salman"
	user_hash["favorite_color"] = "Green"
	user_hash

	>> {"name"=>"Salman", "favorite_color"=>"Green"}

---


##Symbols
###New Ruby type

-	A symbol is a special type of object in ruby, used extensively
-	It is always preceded by a colon
-	Cannot contain spaces or numbers
-	Symbols are used because:
	-	they are immutable and take less memory
	-	they are easier to compare to other objects
	-	they are cleaner in syntax
-	Examples:
	-	```:hello```
	-	```:this_is_a_symbol```

---


##Symbols
###Primarily used as keys for hashes

	ga_markets = {}
	ga_markets = {:NYC => "New York City"}
	ga_markets[:LA] = "Los Angeles"
	ga_markets

	>> {:NYC => "New York City", :LA => "Los Angeles"}


---



##Hash
###Methods

	user = {:user_name => "SalmanAnsari", :email => "salman.ansari@gmail.com"}

	user.has_key? :email #true
	user.key? :email #true
	user.include? :email #true

	user.has_value? "SalmanAnsari" #true (note: extremely inefficient!)

---

##Hash
###Ruby 1.9+ Alternate Syntax

	user = {:user_name => "SalmanAnsari", :email => "salman.ansari@gmail.com"}

	# becomes

	user = {user: "SalmanAnsari", email: "salman.ansari@gmail.com"}

	# a little bit more concise
	# more closely matches JSON format
	# considered an 'alternate' syntax, not a replacement

---



##Collections
###Array of Hashes

	users = [
		{:user => "Salman Ansari", :role => "Instructor"},
		{:user => "Brooks Swinnerton", :role=> "TA"}
		{:user => "Brian Fountain", :role => "TA"]
	]


	# Alternate syntax for Ruby 1.9+

	users = [
		{user: "Salman Ansari", role: "Instructor"},
		{user: "Brooks Swinnerton", role: "TA"},
		{user: "Brian Fountain", role: "TA"}
	]


---


##Iterating Over Collections
###.each

	ga_markets = ["NYC", "LA", "SYD", "LDN"]

	ga_markets.each {|market| puts market}


---


<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Lab Time
###Teddit Collections

---


##Recap
###Iterating Over Collections


---

## Homework


Continue work on Secret Number. Due next class (lesson 4)

---


## Resources: Collections, Loops and APIs


###Cheat Sheet

####Arrays

__Creating Arrays__

```ruby
my_array = ["Apples", "Oranges", "Pears"]
```

> ["Apples", "Oranges", "Pears"]

```ruby
my_array = Array.new
```

> []

```ruby
Array.new(3)
```

> [nil, nil, nil]

```ruby
Array.new(3, "BEWD")
```

> ["BEWD", "BEWD", "BEWD"]

__Assessing Elements__

```ruby
arr = ["NYC", "LDN", "LA", "SF", "BOS", "BER"]
arr[0]
arr[100]
arr[-3]
```

> NYC

> nil

> SF

```ruby
arr[2, 3] #=> [3, 4, 5]
```

> ["LA", "SF", "BOS"]

```ruby
arr[1..4]
```

> [LDN, LA, SF, BOS]

####Hashes

```ruby
	GA_Markets = { "New York City"=>"NYC", "London"=>"LDN", "Los 	Angeles"=>"LA", "San Francisco"=>"SF", "Boston"=>"BOS", 	"Berlin"=>"BER" }

	GA_Markets["London"]
```

> "LDN"

```ruby
	super_heros = { batman: "Bruce Wayne", superman: "Clark Kent", 	spiderman: "Peter Parker"}

	super_heros[:superman]
```

> "Clark Kent"

####Loops

__Iterator loop__

```ruby
4.times do
  puts "This will be printed 4 times"
end
```

> This will be printed 4 times

> This will be printed 4 times

> This will be printed 4 times

> This will be printed 4 times

__Each Loop__

```ruby
		# A list of GA Courses
		courses = [ "FEWD", "BEWD", "CSF" ]

	names.each do|n|
  		puts "GA has a course on #{n}"
	end
```

> GA has a course on FEWD

> GA has a course on BEWD

> GA has a course on CSF


###Tips, Tricks & Motivation

- [The Best Way to Learn Ruby & Rails](http://astonj.com/tech/best-way-to-learn-ruby-rails/)
-  What is iteration - [article](http://www.computerhope.com/jargon/i/iteration.htm)


###Still Feel Lost?
####Catch Up With These Resources

-	Teddit Hashes Answer [Video](http://vimeo.com/gatv/review/67752035/a90db9177f) by Steven Nuñez on behalf of General Assembly
	-	password=> BEWD_GA

-	Arrays [Ruby Docs](http://ruby-doc.org/core-2.0/Array.html)
-	Hashes [Ruby Docs](http://ruby-doc.org/core-2.0/Hash.html)
-	Hashes and Arrays [Tutorial](http://www.codecademy.com/courses/ruby-beginner-en-F3loB?curriculum_id=5059f8619189a5000201fbcb)
-	[*“Ruby-esque”* Loops](http://ruby.about.com/od/rubyfeatures/a/loops_2.htm) see page 1 for more ruby loops not covered in class.


