# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  gets.chomp.downcase
end

#upvotes = 1

def calculate_upvotes(story, category, upvotes)
#upvotes = 1

	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		if story.include?('cats')
			upvotes = upvotes * 5
		# If the Story is about bacon multiply the upvotes by 8
		elsif story.include?('bacon')
			upvotes = upvotes * 8
		# If the Story is about Food it gets 3 times the upvotes.
		elsif story.include?('food')
			upvotes = upvotes * 3
		else
		 	upvotes = upvotes * 1
		end	

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
puts "add upvotes"
upvotes = get_input.to_i
total_upvotes = calculate_upvotes(story, category, upvotes)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{total_upvotes}"