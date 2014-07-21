# jimmy = {}
# jimmy[:name] = "Jimmy J"
# jimmy[:major] = "Math"
# jimmy[:course] = "Math"
# jimmu[:grade] = "A"

# ed = {}
# ed[:name] = "Ed E"
# ed[:major] = "English"
# ed[:course] = "English"
# ed[:grade] = "C"

# carl = {}
# carl[:name] = "Carl C"
# carl[:major] = "History"
# carl[:course] = "History"
# carl[:grade] = "D"

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
	elsif ["D", "F"].inclde?(@grade) and @major == @course
	"failed"
	else
	"passed"
end
 def to_s
 	"#{@name} has #{@grade} #{@course}"
end

jimmy = Student.new("Jimmy J", "Math", "Math", "D")
# jimmy.name = "Jimmy J"
# jimmy.major = "Math"
# jimmy.course = "Math"
# jimmy.grade = "D"

ed = Student.new("Ed E", "English", "Math", "A")
# ed.name = "Ed E"
# ed.major = "English"
# ed.course = "Math"
# ed.grade = "A"

puts "#{jimmy.name} has #{jimmy.grade_status} #{jimmy.course}"
puts jimmy.to_s