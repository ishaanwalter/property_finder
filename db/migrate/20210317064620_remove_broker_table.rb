class RemoveBrokerTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :brokers
  end
end
