#require lib/organizer?

class Game

	attr_accessor :participant_count, :chosen_topic, :players

	def initialize(participant_count, chosen_topic, players)
		@participant_count = participant_count
		@chosen_topic = chosen_topic
		@players = []
	end

def start_playing
	puts "Your chosen topic is #{@chosen_topic}"
	puts "There are #{@participant_count} players in this game"
	puts"Now I would send an SMSS"
end


end
