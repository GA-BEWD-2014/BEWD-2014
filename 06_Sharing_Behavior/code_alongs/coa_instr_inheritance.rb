
#Sharing Behavior and Variables
#TIME: 20 min
#INSTRUCTIONAL DESIGN NOTES:  
# => During the rails portion of the course students will not have to write a class that inherits from another. 
# => However they do need to understand the topic so that active record makes sense. 
#    In addition students who wish to take Computer Science Fundamentals with GA need to know inheritance as well. 
# => We've included more practice in the additional-exercises folder, however our focus is on basic understanding for this lesson.

class Employee
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    return "#{@first_name} #{@last_name}"
  end
end

class Manager < Employee
  attr_accessor :title, :first_name, :last_name

  def initialize(title, first_name, last_name)
    @title = title
    super(first_name, last_name)
  end

  def get_full_name
    return "#{@first_name} #{@last_name} (#{@title})"
  end
end

puts "\nManager's Full Name:"
manager = Manager.new("Teacher", "Rachel", "Ober")
puts manager.get_full_name

puts "\nEmployee's Full Name:"
employee = Employee.new("Rachel", "Ober")
puts employee.get_full_name
