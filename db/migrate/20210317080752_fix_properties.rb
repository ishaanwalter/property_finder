class FixProperties < ActiveRecord::Migration[5.2]
  def change
  	add_column :properties, :dimentions, :string
  	add_column :properties, :summary, :text
  	add_column :properties, :features, :text
  	add_column :properties, :direction, :string
  end
end
