class Category < ActiveRecord::Base
  has_many :classifieds

  def recent_classifieds
    classifieds.limit(5).order('created_at DESC')
  end

  def self.from_params(category)
    where(name: category.capitalize).first_or_create
  end
end
