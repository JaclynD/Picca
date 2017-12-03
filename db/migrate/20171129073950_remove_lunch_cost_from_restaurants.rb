class RemoveLunchCostFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :lunch_cost, :string
  end
end
