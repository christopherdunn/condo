class CreateHoaMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :hoa_memberships do |t|
      t.belongs_to :hoa, null: false
      t.belongs_to :user, null: false
      t.boolean :trustee, null: false, default: false
      t.boolean :admin, null: false, default: false


      t.timestamps
    end
  end
end
