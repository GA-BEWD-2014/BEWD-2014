

times_table = Array.new
  4.times do |x| 
    times_table[x] = []
    4.times do |y| 
      times_table[x][y] = x * y
    end
  end

puts times_table.inspect

puts "____"

puts times_table[2][3]

#times_table each do |y|
	times_table.each do |x|
		#puts a
		puts x
	end	
#end
