class AddOpenToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :open, :text
  end
end
