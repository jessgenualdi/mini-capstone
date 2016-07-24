class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :orders, :product_id, :dog_id
  end
end
