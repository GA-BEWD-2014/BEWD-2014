# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end

# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”.
# For numbers which are multiples of both three and five print “FizzBuzz”.


# INSTRUCTIONAL NOTE: You can implement the method below in many ways
# Try showing the students a really simple way first (with if blocks etc)
# And then iteratively improving it until you finally get to the solution below

def fizzbuzz(number)
  result = "#{number % 3 == 0 ? 'Fizz' : ''}#{number % 5 == 0 ? 'Buzz' : ''}" #
  return result unless result.empty?
  number
end

# Tests

assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

# uncomment this code with your tests pass
1.upto(100) do |number|
  puts fizzbuzz(number)
end
