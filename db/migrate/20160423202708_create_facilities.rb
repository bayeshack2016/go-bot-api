class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :ridb_id
      t.string :legacy_id
      t.string :name

      t.timestamps null: false
    end
  end
end
