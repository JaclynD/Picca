class RemoveDinnerCostFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :dinner_cost, :string
  end
end
