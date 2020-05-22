class CreateStrengthTags < ActiveRecord::Migration[5.2]
  def change
    create_table :strength_tags do |t|
      t.string :strength, null: false, unique: true

      t.timestamps
    end
  end
end
