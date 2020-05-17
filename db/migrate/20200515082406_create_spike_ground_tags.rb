class CreateSpikeGroundTags < ActiveRecord::Migration[5.2]
  def change
    create_table :spike_ground_tags do |t|
      t.references :spike, foreign_key: true, null: false
      t.references :ground_tag, foreign_key: true, null: false

      t.timestamps
    end
  end
end
