class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :twitter_id, null: false, unique: true
      t.string :email, unique: true
      t.string :crypted_password
      t.string :salt
      t.string :screen_name, null: false
      t.string :avatar
      t.integer :role, null: false, default: 0
      t.integer :notification, null: false, default: 0

      t.timestamps                null: false
    end

    add_index :users, :twitter_id, unique: true
  end
end
