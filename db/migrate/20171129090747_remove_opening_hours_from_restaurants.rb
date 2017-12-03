class RemoveOpeningHoursFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :opening_hours, :string
  end
end
