class AddMuseumIdToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :museum_id, :integer
  end
end
