class CreatePlayerStrengthTags < ActiveRecord::Migration[5.2]
  def change
    create_table :player_strength_tags do |t|
      t.references :player, foreign_key: true, null: false
      t.references :strength_tag, foreign_key: true, null: false

      t.timestamps
    end
  end
end
