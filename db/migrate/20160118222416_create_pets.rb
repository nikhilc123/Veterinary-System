class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.float :weight
      t.date :lastvisit

      t.timestamps null: false
    end
  end
end
