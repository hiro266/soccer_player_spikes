class CreateStrengthTags < ActiveRecord::Migration[5.2]
  def change
    create_table :strength_tags do |t|
      t.string :strength

      t.timestamps
    end
    add_index :strength_tags, :strength, unique: true
  end
end
