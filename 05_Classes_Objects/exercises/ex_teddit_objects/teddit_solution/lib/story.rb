class Story
  attr_reader :title, :category, :upvotes
  def initialize(title, category)
    @title = title
    @category = category
    @upvotes = 1
  end

  def upvote
    @upvotes += 1
  end

  def downvote
    @upvotes -=1
  end
end
