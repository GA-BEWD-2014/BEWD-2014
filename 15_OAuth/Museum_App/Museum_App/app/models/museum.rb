class Museum < ActiveRecord::Base
	has_many :paintings
	has_many :artists, through: :paintings
end
