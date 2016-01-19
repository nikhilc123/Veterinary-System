class CreatePettypes < ActiveRecord::Migration
  def change
    create_table :pettypes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
