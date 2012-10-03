class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :length => 40
      t.string :email, :length => 100
      t.string :nickname, :length => 40
      t.string :salt, :length => 100, :default => ""
      t.string :hashed_password, :length => 40
      t.text :introduction
      t.integer :status, :default => 0

      t.timestamps
    end
  end
end
