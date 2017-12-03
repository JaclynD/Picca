class AddAccessToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :access, :text
  end
end
