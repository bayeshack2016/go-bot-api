class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transaction_id
      t.string :facility_id
      t.string :facility_zip
      t.string :park
      t.string :customer_zip

      t.timestamps null: false
    end
  end
end
