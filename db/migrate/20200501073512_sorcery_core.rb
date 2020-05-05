class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :twitter_id, null: false, unique: true
      t.string :email
      t.string :crypted_password
      t.string :salt
      t.string :screen_name, null: false
      t.string :profile_image_url
      t.integer :role, null: false, default: 0
      t.integer :notification, null: false, default: 0

      t.timestamps                null: false
    end

    add_index :users, :email, unique: true
  end
end
