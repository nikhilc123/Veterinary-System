class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :customer
      t.string :pet
      t.text :reminder
      t.string :reason
      t.date :date

      t.timestamps null: false
    end
  end
end
