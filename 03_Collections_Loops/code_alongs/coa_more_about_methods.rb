# Methods can be given default arguments. If you don't supply them, Ruby will use those
#
def application_info(name, stars=3)
  puts "#{name} currently has #{stars} stars"
end

application_info('Angry Birds', 5)
application_info('Temple Run')

# If your defaults are out of order, Ruby will figure it out...

def patient(name, status="Infected", id)
  puts "#{name} - patient #{id}: status #{status}"
end

patient("Rick Grimes", "Not biting", "001")
patient("Shane Walsh", "123")

# But don't do this...

# ---------
#

def user(name:"", email:"")
  puts "New user #{name}, email: #{email}"
end

user(name: "Steven", email: "steven.nunez@gmail.com")

# ------
def dramatic_exit(screamer, *people)
  puts "#{screamer} yelled \"#{people.join('!, ')}! GET IN THE VAN\""
end

dramatic_exit("Steven", "Stephanie", "Eddie")

# You can mix the order of the splat operator...
def split_apart(first, *splat, last)
  puts "First: #{first}, splat: #{splat}, last: #{last}"
end

split_apart(1,2,3,4)

# But don't do this...

def get_input
  input = gets.chomp
  return "Too short" if input.length < 3
  input
end
