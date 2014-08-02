# jimmy ={}
# jimmy[:name] = "Jimmy J"
# jimmy[:major] = "Math"
# jimmy[:course] = "Math"
# jimmy[:grade] = "A"

# ed ={}
# ed[:name] = "Eddy E"
# ed[:major] = "English"
# ed[:course] = "Math"
# ed[:grade] = "C"

# ted ={}
# ted[:name] = "Teddy T"
# ted[:major] = "Math"
# ted[:course] = "English"
# ted[:grade] = "A"


class Student
	attr_accessor :name, :major, :course, :grade

	def initialize(n, major, course, grade)
	@name = n
	@major = major
	@course = course
	@grade = grade
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

	def compare(other_student)
		
	end

	def to_s
		puts "#{@name} has #{grade_status} #{@course}"
	end
end

# jimmy = Student.new
# jimmy.name = "Jimmy J"
# jimmy.major = "Math"
# jimmy.course = "Math"
# jimmy.grade = "A"

# ed = Student.new
# ed.name = "Ed D"
# ed.major = "English"
# ed.course = "Math"
# ed.grade = "D"

tom = Student.new("tom","classics","math","F")

# puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"
# puts "#{ed.name} has #{ed.grade_status} #{ed.course}"
puts tom