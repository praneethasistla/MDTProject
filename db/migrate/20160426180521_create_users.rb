class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :username
      t.string :name
      t.string :address
      t.string :email
      t.string :password_digest
      t.string :contact_name
      t.string :contact_title
      t.string :phone
      t.integer :user_type

      t.timestamps null: false
    end
  end
end
