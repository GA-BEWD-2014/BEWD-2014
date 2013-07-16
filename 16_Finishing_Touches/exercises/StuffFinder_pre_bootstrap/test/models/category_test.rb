require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "returns 5 recent classifieds" do
    category = Category.create name: "space"
    10.times do |time|
      category.classifieds.create(title: "Title ##{time}")
    end

    assert_equal 5, category.recent_classifieds.count
  end

  test "fetches normalized category" do
    original = Category.create(name: "Space")
    fetched1 = Category.from_params("space")
    fetched2 = Category.from_params("spAce")

    assert_equal original, fetched1
    assert_equal original, fetched2
  end
end
