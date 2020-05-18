class CreatePlayerPositionTags < ActiveRecord::Migration[5.2]
  def change
    create_table :player_position_tags do |t|
      t.references :player, foreign_key: true, null: false
      t.references :position_tag, foreign_key: true, null: false

      t.timestamps
    end
  end
end
