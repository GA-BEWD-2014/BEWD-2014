require 'pry'
require 'json'
require 'rest-client'

puts "WELCOME TO MY REDDIT APP"
puts "Select an option to continue"
puts "0) View subreddits"
puts "1) View the front page posts"
puts "2) View specific subreddit posts"
puts "3) Search all posts"
puts "4) View a specific user's posts"
puts "5) View specific comments for a posts"
puts "6) Sort posts by upvotes"
puts "7) Favorite certain posts"


# ask for data
response = RestClient.get("http://www.reddit.com/.json")

# turn into sth we can work with
query = JSON.load(response)

select = gets.chomp.to_i

#binding.pry
case select

when 0
	
	count = 0


	#subreddit
	query["data"]["children"].each do |x| 
			puts x['data']['subreddit']
			count += 1	
	end 
	puts "Number of entries #{count}"


when 1
	
	count = 0

	query["data"]["children"].each do |x| 
		puts x['data']['title']
		count += 1
	end 
	puts "Number of entries #{count}"

	# puts query["data"]["children"][0]["data"]["title"]

when 2
	
	count = 0

	puts "enter a subreddit e.g. funny, pics"
		input = gets.chomp.downcase


	#subreddit
	query["data"]["children"].each do |x| 
		if x['data']['subreddit'] == input
			puts x['data']['title']
			count += 1
		end		
	end 
	puts "Number of entries #{count}"


when 3
	puts "enter a search term"
		input = gets.chomp.downcase

	count = 0

	#search for term
	query["data"]["children"].each do |x| 
		if x['data']['title'].include?(input) 
			puts x['data']['title']
		count += 1
		
		# elsif x['data']['selftext_html'].include?(input)
		# 	puts x['data']['title']
		# 	count += 1
		end	
		 
	end	
	puts "Number of entries #{count}"


when 4
	
	puts "here are the authors"

	count = 0


	#authors
	query["data"]["children"].each do |x| 
			puts x['data']['author']
			count += 1	
	end 
	puts "Number of entries #{count}"


	puts "For which author do you like to see the post?"
	author = gets.chomp
	
	query["data"]["children"].each do |x| 
			if x['data']['author'].include?(author)
				puts x['data']['title']
			end	
	end 


when 5
	
	count = 0

	query["data"]["children"].each do |x| 
		puts  "#{count} : #{x['data']['title']}  -- #{x['data']['name']}"
		
		count += 1
	end 
	puts "Number of entries #{count}"

	puts "type number you like to see posts for"
	selection2 = gets.chomp.to_i
	name = query["data"]["children"][selection2]["data"]["name"]
	name_new = name.split("_").last
	puts name_new

	# ask for data
	response2 = RestClient.get("http://www.reddit.com/comments/#{name_new}/.json")

	# turn into sth we can work with
	query2 = JSON.load(response2)

	#puts query2[0][0]#["body"]	
	puts query2[0]#["children"]["data"]#["body"]

	
when 6
	
	count = 0

	hash = Hash.new

	query["data"]["children"].each do |x| 
		hash[x['data']['ups']] = x['data']['title']
		count += 1
	end 
	sorted_hash = hash.sort_by {|ups, titles| ups}.reverse

	sorted_hash.each do |ups, titles|
		puts "Upvotes: #{ups} - Title: #{titles}"
	end


when 7
	
	# count = 0
	# array_new = Array.new

	# query["data"]["children"].each do |x| 
	# 		# array_new = [count]
	# 		# 3.times do |y|
	# 			array_new.push count
	# 			array_new.push x['data']['title']
	# 			array_new.push x['data']['saved']
	# 		# end	
	# 	count += 1
	# end 
	
	# puts "Which of these posts do you like to add to your favorites?"
	# puts "Number of entries #{count}"

	# puts array_new.inspect	
	
	# array_new.each do |y|
	#  	puts y
	# end

	count = 0

	hash = Hash.new

	query["data"]["children"].each do |x| 
		hash[count] = x['data']['title']
		count += 1
	end 
	
	#puts hash.inspect 

	hash.each do |key, value|
		puts "#{key}: #{value}"
	end


	puts "Which of these posts do you like to add to your favorites? Add one number below"
	selection3 = gets.chomp.to_i

	favorite_hash = Hash.new
	
	hash.each do |key, value|
		if selection3 == key
			puts "We have added the follwing post to you favorite #{key}: #{value}"
			favorite_hash[key] = value
		end	
	end

	puts "do you like to add another favorite post? if so add a number, if not type 'no' " 
	selection4 = gets.chomp

	# if selection4 == "no"
	# 	favorite_hash.each do |key, value|
	# 	puts "Favorite posts: #{key}: #{value}"
	# 	end
	# else 	
		selection4.to_i
		hash.each do |key, value|
		if selection4 == key
			puts "We have added the follwing post to your favorite #{key}: #{value}"
			favorite_hash[key] = value
		end	
		end
	#end	
	puts favorite_hash.inspect

else
	puts "Not a valid selection"

end 


# gstub( ,%20)