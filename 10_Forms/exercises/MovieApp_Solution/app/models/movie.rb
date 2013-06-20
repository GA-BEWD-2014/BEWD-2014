class Movie < ActiveRecord::Base
  validates :title, :description, :year_released, :rating, presence: true
  validates :description, length: { minimum: 10, message: "Your description is far too short" }
  validates :year_released, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, only_integer:true }

  def self.search_for(query)                                                       
    where('title LIKE :query OR description LIKE :query OR year_released LIKE :query', :query => "%#{query}%") 
  end    
end
