class ChangeColumnInCartedProduct < ActiveRecord::Migration
  def change
    rename_column :carted_products, :product_id, :dog_id
  end
end
