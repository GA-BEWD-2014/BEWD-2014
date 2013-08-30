
#Sharing Behavior and Variables
#TIME: 20 min
#INSTRUCTIONAL DESIGN NOTES:
# => During the rails portion of the course students will not have to write a class that inherits from another.
# => However they do need to understand the topic so that active record makes sense.
#    In addition students who wish to take Computer Science Fundamentals with GA need to know inheritance as well.
# => We've included more practice in the additional-exercises folder, however our focus is on basic understanding for this lesson.

# A standard employee takes first and last name
# They have no contact info

class Employee
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee
  attr_accessor :title, :email

  def initialize(first_name, last_name, title, email)
    super(first_name, last_name)
    @title = title
    @email = email
  end

  def full_name
    "#{@first_name} #{@last_name} (#{@title})"
  end

  def contact
    @email
  end
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
  attr_accessor :twitter_handle

  def initialize(first_name, last_name, twitter_handle)
    super(first_name, last_name)
    @twitter_handle = twitter_handle
  end

  def contact
    @twitter_handle
  end
end

>> employee = Employee.new("Some", "Person", "123456789")
>> employee.contact
=> "123456789"

>> manager = Manager.new("John", "Snow", "john.snow@bewd.com")
>> manager.contact
=> "john.snow@bewd.com"

>> marketer = Marketer.new("Snow", "White", "@lovemydwarfs")
>> marketer.contact
=> "@lovemydwarfs"


# BONUS: Demonstrate how to make this code less error-prone by using named arguments
#        for the initializers
