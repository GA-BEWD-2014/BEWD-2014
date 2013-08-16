class AddRatingToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :rating, :integer, default: 3
  end
end
