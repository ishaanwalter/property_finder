class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :address
      t.string :price
      t.integer :rooms
      t.integer :bathrooms

      t.timestamps
    end
  end
end
