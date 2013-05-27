#Explaining Classes, Objects & load paths. 
#TIME: 15 min
#INSTRUCTIONAL DESIGN NOTES: 
# => This example is to further highlight objects and classes.
# => Start with a blank document and build. Load into irb and explain $LOAD_PATH.unshift(File.dirname(__FILE__))
# => Create instances and have students create their own instances in irb to practice. Some examples commented out below.


class Laptop
	attr_accessor :brand, :screen_size, :power

	def initialize(brand, screen_size)
		@brand = brand
		@screen_size = screen_size
		@power = false
	end

	def power?(state)
		@power = state
	end

	def display
		return "#{@brand} #{@screen_size} is on: #{@power}"
	end
end


#my_mac = Laptop.new("mac", "13 inch")
#puts my_mac.display

#my_pc = Laptop.new("HP", "15 inch")
#puts my_pc.display

#my_mac.power? true

#puts my_mac.display
#puts my_pc.display