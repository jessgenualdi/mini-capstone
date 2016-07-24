class CreateCategorizedDogs < ActiveRecord::Migration
  def change
    create_table :categorized_dogs do |t|
      t.integer :category_id
      t.integer :dog_id

      t.timestamps null: false
    end
  end
end
