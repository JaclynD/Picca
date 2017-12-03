class AddMenuToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :menu, :integer
  end
end
