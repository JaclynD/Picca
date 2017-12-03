class AddTestToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :test, :string
  end
end
