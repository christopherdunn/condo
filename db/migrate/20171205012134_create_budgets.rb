class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.string :oil
      t.string :gas
      t.string :electric
      t.string :fees
      t.string :assessments
      t.string :water
      t.string :insurance
      t.string :accounting
      t.string :repairs
      t.string :landscaping
      t.string :snow
      t.string :miscellaneous
      t.string :cleaning
      t.string :taxes
      t.string :waste_removal
      

      t.timestamps
    end
  end
end
