class AddBudgetToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :budget, :string
  end
end
