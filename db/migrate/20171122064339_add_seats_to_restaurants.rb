class AddSeatsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :seats, :integer
  end
end
