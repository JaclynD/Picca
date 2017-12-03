class RemoveTestFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :test, :string
  end
end
