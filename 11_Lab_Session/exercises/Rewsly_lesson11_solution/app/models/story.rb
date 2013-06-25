class Story < ActiveRecord::Base
  validates :title, :link, :category, :upvotes, presence: true
  scope :popular, -> { where('upvotes >= ?', 4)}
  scope :recent, -> { where('created_at >= ?', Date.today)}

  def self.search_for(query)
    where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
  end
end
