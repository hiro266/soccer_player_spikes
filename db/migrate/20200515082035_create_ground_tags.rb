class CreateGroundTags < ActiveRecord::Migration[5.2]
  def change
    create_table :ground_tags do |t|
      t.string :ground

      t.timestamps
    end
    add_index :ground_tags, :ground, unique: true
  end
end
