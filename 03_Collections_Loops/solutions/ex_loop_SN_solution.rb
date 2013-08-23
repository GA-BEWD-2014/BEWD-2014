# Write a program that prints 99 bottles of beer on the wall.
# The song starts with
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(
#

# You can show both the Simple and Optimized solution
# to demonstrate that there's always more than one way to do it
# and discuss the pros/cons of each

# SIMPLE SOLUTION:
# ---------------------------------

def bottle_count(count)
  if count == 1
    "#{count} bottle"
  else
    "#{count} bottle#{"s"}"
  end
end

99.downto(2) do |count|
  puts "#{bottle_count(count)} of beer on the wall"
  puts "#{bottle_count(count)} of beer"
  puts "You take one down and pass it around,"
  puts "#{bottle_count(count - 1)} of beer on the wall!"
  puts
end
  puts "1 bottle of beer on the wall"
  puts "1 bottle of beer"
  puts "You take one down and pass it around,"
  puts "No more bottles of beer on the wall :-("
  puts


# OPTIMIZED SOLUTION:
# ---------------------------------

def pluralize(word, count)
  "#{count} #{word}#{'s' unless count == 1}"
end

def sing_bottles(count)
  pluralized_count = pluralize("bottle", count)
  puts "#{pluralized_count} of beer on the wall"
  puts "#{pluralized_count} of beer"
  puts "#{pluralize("bottle", count - 1)} of beer on the wall!"
  puts "You take one down and pass it around," unless count == 1
end

99.downto(2) do |count|
  sing_bottles(count)
  puts "#{bottle_count(count - 1)} of beer on the wall!"
end

sing_bottles(1)
puts "No more bottles of beer on the wall :-("
