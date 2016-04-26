class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :transaction_id
      t.integer :inventory_id
      t.datetime :date
      t.integer :supplier_id
      t.integer :recipient_id
      t.integer :quantity
      t.boolean :confirmed_supplier
      t.boolean :confirmed_recipient

      t.timestamps null: false
    end
  end
end
