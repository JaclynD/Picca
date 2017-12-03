class RemovePhoneFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :phone, :string
  end
end
