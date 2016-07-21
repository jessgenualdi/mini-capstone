class RemoveImageFromDogs < ActiveRecord::Migration
  def change
    remove_column :dogs, :img, :string
  end
end
