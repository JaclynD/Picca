class AddMobileAccessToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :mobile_access, :text
  end
end
