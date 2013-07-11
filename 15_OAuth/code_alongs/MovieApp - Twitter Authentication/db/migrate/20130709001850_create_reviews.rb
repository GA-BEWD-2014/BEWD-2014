class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :movie, index: true
      t.text :post

      t.timestamps
    end
  end
end
