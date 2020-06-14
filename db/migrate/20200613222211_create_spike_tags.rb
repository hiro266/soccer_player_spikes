class CreateSpikeTags < ActiveRecord::Migration[5.2]
  def change
    create_table :spike_tags do |t|
      t.references :spike, null: false, foreign_key: true
      t.references :tag,  null: false, foreign_key: true

      t.timestamps
    end
    add_index :spike_tags, [:spike_id, :tag_id], unique: true
  end
end
