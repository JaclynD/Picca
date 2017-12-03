class RemoveKeywordFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :keyword, :string
  end
end
