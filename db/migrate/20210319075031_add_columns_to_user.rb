class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :mobile, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :license_no, :string
  end
end
