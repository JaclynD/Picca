class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :opening_hours
      t.string :lunch_cost
      t.string :dinner_cost
      t.text :address
      t.string :phone
      t.text :main_image
      t.timestamps
    end
  end
end
