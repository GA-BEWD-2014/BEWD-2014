# # class NewsPaper
# # 	attr_accessor :stories

# # 	def initialize 
# # 		@stories = []
# # 	end

# # 	def self.generate_random_story
# # 		"This random even happened on day #{rand(28)} of this month"
# # 	end

# # 	def add_story(story)
# # 		self.stories << storyend
# # 	end

# # end

# # story = NewsPaper.generate_random_story
# # puts story

# # paper = NewsPaper.new
# # paper.add.story(story)
# # puts 

# # class GA_course
# # 	attr_accessor :course_name
# # 	def initialize(course_name)
# # 		@course_name = course_name
# # 	end

# # def announce_course
# # puts "GA is offering a course called #{course_name} right now!"
# # end

# # def self.announce_all_courses
# # puts "GA offers lots of wacky stuff"
# # end

# # end

# # our_course = GA_course.new("BEWD")
# # our_course.announce_course
# # GA_course.announce_all_courses

# class Employee
# 	attr_accessor :first_name, :last_name

# 	def initialize(first_name, last_name)
# @first_name = first_name
# @last_name = last_name
# 	end

# 	def full_name
# "#{first_name} #{last_name}"
# 	end
# end

# 	mari=Employee.new("Mari", "Miyachi")
# 	puts mari.full_name

# class Manager < Employee
# attr_accessor :email_address, :title

# def initialize(first_name, last_name, email_address, title)
# # @first_name=first_name
# # @last_name = last_name
# super(first_name, last_name)
# @email_address = email_address
# @title = title
# end 

# def full_name
# "#{@first_name} #{@last_name} #{@title}"
# end

# def contact
# "#{@email_address}"
# end
# end

	
# class Marketer < Employee
# 	attr_accessor :twitter_name

# 	def initialize(first_name, last_name, twitter_name)
# 		super(first_name, last_name)
# 		@twitter_name=twitter_name
# 	end

# 	def contact
# 		"#{@twitter_name}"
# 	end
# end

# class AssistantMarketer < Marketer

# end


# jane=Manager.new("Jane", "Jacobcs", "mari@yahoo", "Bucho")
# puts jane.full_name

# puts jane.contact

# ted = Marketer.new("Ted", "e", "teddSauce")

# puts ted.contact

module Animal
	class Bat
		def fly!
			puts "go fly!!"
		end
	end
end

module Blunt_instruments
	class Bat
		def made_of
			"wood"
		end
	end
end

Animal::Bat.new
Blunt_instruments::Bat.new

