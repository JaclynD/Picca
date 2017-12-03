class AddGuestsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :guests, :integer
  end
end
