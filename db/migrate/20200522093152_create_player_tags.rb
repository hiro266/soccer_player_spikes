class CreatePlayerTags < ActiveRecord::Migration[5.2]
  def change
    create_table :player_tags do |t|
      t.references :player, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
    add_index :player_tags, [:player_id, :tag_id], unique: true
  end
end
