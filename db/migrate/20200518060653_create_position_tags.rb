class CreatePositionTags < ActiveRecord::Migration[5.2]
  def change
    create_table :position_tags do |t|
      t.string :position

      t.timestamps
    end
    add_index :position_tags, :position, unique: true
  end
end
