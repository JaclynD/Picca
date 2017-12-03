class AddAttributeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attribute, :string
  end
end
