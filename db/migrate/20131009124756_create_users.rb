class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :crypted_password, null: false
      t.string :salt, null: false
      t.string :role, null: false, default: 'customer'
      t.string :name

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end