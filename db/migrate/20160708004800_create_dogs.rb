class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :sex
      t.string :age
      t.string :price

      t.timestamps null: false
    end
  end
end
