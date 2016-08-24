class AddColumnToProduct < ActiveRecord::Migration
  def change
    add_column :products, :totalprice, :float
  end
end
