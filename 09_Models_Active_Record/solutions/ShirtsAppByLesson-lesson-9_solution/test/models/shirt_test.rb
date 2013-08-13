require 'test_helper'

class ShirtTest < ActiveSupport::TestCase
  setup do
    @shirt = Shirt.new name: "My Shirt", description: "A shirt description", image: "valid.png" 
  end

  test "requires listed fields" do
    [:name, :description, :image].each do |property|
      original_value = @shirt[property]
      @shirt[property] = nil
      assert @shirt.invalid?, "Shirt requires name"
      @shirt[property] = original_value
      assert @shirt.valid?, "Shirt should be valid"
    end
  end

  test "description must be at least 10 characters long" do
    @shirt.description = "short"
    assert @shirt.invalid?
    @shirt.description = "Sufficiently long to pass this test"
    assert @shirt.valid?
  end

  test "images must be of type png" do
    @shirt.image = "foo.jpg"
    assert @shirt.invalid?
    @shirt.image = "foo.gif"
    assert @shirt.invalid?
    @shirt.image = "foo.pngngngn"
    assert @shirt.invalid?
    @shirt.image = "validimage.png"
    assert @shirt.valid?
  end
end
