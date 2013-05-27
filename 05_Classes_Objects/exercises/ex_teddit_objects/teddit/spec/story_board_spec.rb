require 'minitest/autorun'
require_relative '../lib/story_board'

describe StoryBoard do
  it "can show all added stories" do
    Story = Struct.new(:title, :category, :upvotes)
    story = Story.new
    story.title = "Hats see upsurge in pigeon population"
    story.category = "Fashion"
    story.upvotes = 1
    StoryBoard.add_story(story)
    StoryBoard.stories.must_equal ["Story: Hats see upsurge in pigeon population, Category: (Fashion), Current Upvotes: 1"]
  end
end
