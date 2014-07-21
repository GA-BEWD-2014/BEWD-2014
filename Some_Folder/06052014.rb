
# dict_hash = {} 

# dict_hash['shaia'] = 'candle'
# dict_hash['shoo'] = 'food'

# dict_hash.each do |c_word, word|
# 	puts "#{c_word}: #{word}"
# end
# ____________

# weird_hash = Hash.new

# weird_hash[12] = 'monkeys'
# weird_hash[[]] = 'emptiness'
# weird_hash[Time.new] = 'no time like the present'

# _____________

class Die

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing 
		@number_showing
	end
end

die = Die.new
die.roll
puts die.showing
puts die.showung
die.roll
puts die.showing
