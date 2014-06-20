class Shirt < ActiveRecord::Base
    def self.search_for(query)
        where('name LIKE :query OR description LIKE :query', query: "%#{query}%")
    end
end
