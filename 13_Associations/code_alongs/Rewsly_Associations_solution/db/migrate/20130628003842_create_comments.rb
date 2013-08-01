class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :story, index: true
      t.text :post

      t.timestamps
    end
  end
end
