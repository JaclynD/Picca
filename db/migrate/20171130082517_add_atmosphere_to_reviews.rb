class AddAtmosphereToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :atmosphere, :integer
  end
end
