class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :rate
      t.text :text
      t.string :lunch_cost
      t.string :dinner_cost
      t.string :keyword
      t.timestamps
    end
  end
end
