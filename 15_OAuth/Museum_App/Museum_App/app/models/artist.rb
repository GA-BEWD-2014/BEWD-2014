class Artist < ActiveRecord::Base
	has_many :paintings
	has_many :museums, through: :paintings
end
