#Explaining: Variable Scope. 
#TIME: 25 min
#INSTRUCTIONAL DESIGN NOTES: 
# => Provide this file (minus these instructions) to students so they can follow along.
# 	 Focus on logic and understanding rather than stress syntax.
# => Again each section in this code along builds upon the previous.
# => If baseball or the Yankees aren't your thing, you can change it. I won't tell :)

# methods create scope

chant = "Go Yankees!"

def shout
  puts "About to shout"
  puts chant.upcase
  puts "My throat hurts"
end

shout

#Anything you want to use has to be passed inject
#####################################################################################################
#####################################################################################################
#####################################################################################################

# chant = "Go Yankees!"

# def shout(chant)
#   puts "About to shout"
#   puts chant.upcase
#   puts "My throat hurts"
# end

# shout(chant)


# Our next structure is a class
#####################################################################################################
#####################################################################################################
#####################################################################################################

# class Car
#   def fill_er_up
#     gasoline = 10
#   end

#   def has_gasoline?
#     gasoline > 0
#   end

#   def start_car!
#     if has_gasoline?
#       puts "vroom!".upcase
#     end
#   end
# end

# mazda = Car.new
# mazda.fill_er_up
# mazda.start_car!

# We saw that methods keep their own scope. We need to use a different kind of variable to give it a greater scope
#####################################################################################################
#####################################################################################################
#####################################################################################################

# class Car
#   def fill_er_up
#     @gasoline = 10
#   end

#   def has_gasoline?
#     @gasoline > 0
#   end

#   def start_car!
#     if has_gasoline?
#       puts "vroom!".upcase
#     end
#   end
# end

# mazda = Car.new
# mazda.fill_er_up
# mazda.start_car!

# Warning, the next variable isn't really used much
#####################################################################################################
#####################################################################################################
#####################################################################################################

# class Car

#   @@cars_created = 0

#   def initialize
#     @@cars_created += 1
#   end

#   def show_cars_created
#     puts "#{@@cars_created} cars created!"
#   end
# end

# mazda = Car.new
# toyota = Car.new
# honda = Car.new

# honda.show_cars_created

# Constants - Intended to never be changed. Think Pi.
#####################################################################################################
#####################################################################################################
#####################################################################################################

# class Car
#   WHEELS = 4
# end

# puts "Cars have #{Car.WHEELS} wheels"

# Needs the scope resolution operator. This just means "Go into this class and grab this constant". Only works with constants
# class Car
#   WHEELS = 4
# end

# puts "Cars have #{Car::WHEELS} wheels"

# THERE IS RARELY A REASON TO USE THIS TYPE OF VARIABLE!
#####################################################################################################
#####################################################################################################
#####################################################################################################

# $sharing_too_much = "We're all friends here"
# class Nosy
#   def look_around
#     puts $sharing_too_much
#   end
# end

# class BadBoy
#   def tamper
#     $sharing_too_much = "You look fat in those jeans"
#   end
# end

# class Busybody
#   def look_around
#     puts $sharing_too_much
#   end
# end

# nosy = Nosy.new
# bad_boy = BadBoy.new
# busy_body = Busybody.new

# nosy.look_around
# bad_boy.tamper
# busy_body.look_around
