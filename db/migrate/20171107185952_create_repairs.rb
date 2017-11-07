class CreateRepairs < ActiveRecord::Migration[5.1]
  def change
    create_table :repairs do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :status
      t.belongs_to :hoa, null: false

      t.timestamps
    end
  end
end
