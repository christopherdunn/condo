class CreateHoas < ActiveRecord::Migration[5.1]
  def change
    create_table :hoas do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.integer :units, null: false

      t.timestamps
    end
  end
end
