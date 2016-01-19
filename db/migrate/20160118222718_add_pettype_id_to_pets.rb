class AddPettypeIdToPets < ActiveRecord::Migration
  def change
    add_column :pets, :pettype_id, :integer
  end
end
