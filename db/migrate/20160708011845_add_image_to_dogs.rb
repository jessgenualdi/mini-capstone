class AddImageToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :img, :string
  end
end
