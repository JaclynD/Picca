class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :image
      t.integer :user_id
      t.integer :review_id
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
