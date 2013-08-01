require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  setup do
    @movie = Movie.new title: "My title", description: "A  movie description", year_released: 2001, rating: 5
  end

  test "requires listed fields" do
    [:title, :description, :year_released, :rating].each do |property|
      original_value = @movie[property]
      @movie[property] = nil
      assert @movie.invalid?, "Movie should require title"
      @movie[property] = original_value
      assert @movie.valid?, "Movie should be valid"
    end
  end

  test "description must be at least 10 characters long" do
    @movie.description = "short"
    assert @movie.invalid?
    assert_equal "Your description is far too short", @movie.errors[:description].first
    @movie.description = "Sufficiently long to pass this test"
    assert @movie.valid?
  end

  test "#year_released must be a natural number" do
    @movie.year_released = "I've made a huge mistake"
    assert @movie.invalid?, "Year released must be a natural number"
    @movie.year_released = -7
    assert @movie.invalid?, "Year released must be a natural number"
    @movie.year_released = 2010.0
    assert @movie.invalid?, "Year released must be a natural number"
  end

  test "ratings are valid" do
    @movie.rating = 0
    assert @movie.invalid?, "Only allow ratings from 1-5"
    @movie.rating = 6
    assert @movie.invalid?, "Only allow ratings from 1-5"
    @movie.rating = 5.0
    assert @movie.invalid?, "Should be natural numbers"
    @movie.rating = 5
    assert @movie.valid?, "Should be valid!"
  end
end
