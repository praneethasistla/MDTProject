class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :inventory_id
      t.string :name
      t.string :description
      t.integer :quantity_original
      t.integer :quantity_remaining
      t.integer :supplier_id
      t.datetime :date

      t.timestamps null: false
    end
  end
end
