class CreatePositionTags < ActiveRecord::Migration[5.2]
  def change
    create_table :position_tags do |t|
      t.string :position, null: false, unique: true

      t.timestamps
    end
  end
end
