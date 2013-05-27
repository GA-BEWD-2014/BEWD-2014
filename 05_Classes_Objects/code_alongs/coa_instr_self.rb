#Explaining: 'self' keyword.. 
#TIME: 20 min
#INSTRUCTIONAL DESIGN NOTES: 
# => This is a simple example to explain 'self' and its meaning. Currently the ICL exercises only use "self" for Class methods. 
# 	 But for those wishing to take the GA's Computer Science Fundamentals course they need to have been exposed to this concept. 

puts "#{self} Outside of the class"

class TestingSelf
  puts "#{self} Inside of the class"
  def as_an_instance
    puts "#{self} As an instance"
  end
end

ts = TestingSelf.new
ts.as_an_instance


