# jimmy ={}
# jimmy[:name] = "Jimm J"
# jimmy[:major] = "Math"
# jimmy[:course] = "Math"
# jimmy[:grade] = "A"

# ed ={}
# ed[:name] = "Ed E"
# ed[:major] = "Math"
# ed[:course] = "Math"
# ed[:grade] = "D"

# carl ={}
# carl[:name] = "Carl"
# carl[:major] = "English"
# carl[:course] = "Math"
# carl[:grade] = "C"





# jimmy = Student.new
# jimmy.name = "Jimm J"
# jimmy.major = "Math"
# jimmy.course = "Math"
# jimmy.grade = "A"



# carl ={}
# carl[:name] = "Carl"
# carl[:major] = "English"
# carl[:course] = "Math"
# carl[:grade] = "C"


class Student
	attr_accessor :name, :major, :course, :grade, :enrolled

	def initialize(n, major, course, grade)
		@name = n
		@major = major
		@course = course
		@grade = grade
		@enrolled = true
	end	

	def grade_status
		if @grade == "F"
			"failed"
		elsif ["D", "E"].include?(@grade) && @major == @course
			"failed"
		else
			"passed"
		end	
	end			

	def to_s
		"#{@name} has #{grade_status} #{@course}"
	end	
end


ed = Student.new("Ed E", "English", "Math", "D")
# ed.name = "Ed E"
# ed,major = "English"
# ed.course = "Math"
# ed.grade = "D"

#puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"
puts "#{ed.name} has #{ed.grade_status} #{ed.course}"