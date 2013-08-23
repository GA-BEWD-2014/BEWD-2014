#IRB: Instructor's File
#TIME: 10 min
#INSTRUCTIONAL DESIGN NOTES:
# => Demonstrate using irb and arithmetic operators,
# => Allow students to explore using irb.
# => Demonstrate how to ASSIGN integer & string variables (explain assignment)
# => How to access variables, and what they return
# => How to assign variables to the result of an expression (the RIGHT side)

#1. Demonstrate creation of simple integer variables
# => explain how assigning a variable will return the value of the variable
# => explain that simply accessing a variable will return its value

>> x = 2
=> 1
>> y = 3
=> 2
>> z = x + y
=> 5
>> z = x * y
=> 6
>> z = z + 1
=> 7
>> z

#2. Demonstrate creation of simple string variables
# => explain how the + operator works differently depending on type
# => while + works to append strings, * and other operators will not work
# => explain that when you try to do something 'illegal', an ERROR is thrown
# => when adding things, you can add LITERAL strings (explain that) to variable strings

>> x = "two"
=> "two"
>> y = "three"
=> "three"
>> z = x + y
=> "twothree"
>> z = x * y
TypeError: no implicit conversion of String into Integer

>> z = z + "one"
=> "twothreeone"
>> z
=> "twothreeone"










