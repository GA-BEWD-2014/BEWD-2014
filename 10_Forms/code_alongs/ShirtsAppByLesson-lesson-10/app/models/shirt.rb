class Shirt < ActiveRecord::Base
  validates :name, :description, :image, presence: true
  validates :description, length: { minimum: 10 }
  validates :image, format: /\A\w+\.png\z/

  def self.search_for(query)
    where('name LIKE :query OR description LIKE :query', query: "%#{query}%")
  end
end
