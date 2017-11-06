class CreateCondoDocuments < ActiveRecord::Migration[5.1]

  def change
    create_table :condo_documents do |t|
      t.string :document
      t.string :name
      t.belongs_to :hoa, null: false
      t.timestamps
    end
  end
end
