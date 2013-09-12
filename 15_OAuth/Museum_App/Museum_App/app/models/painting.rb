class Painting < ActiveRecord::Base
  validates :title, :year, :style, presence: true
  validates :year, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  belongs_to :museum
  belongs_to :artist

  def self.search_for(query)
    where('title LIKE :query', :query => "%#{query}%")
  end
end
