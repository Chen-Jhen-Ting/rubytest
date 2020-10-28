class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email

      t.timestamps
    end
    add_index :users, :name, unique: true
    add_index :users, :email, unique: true
  end
end
