class CreateSpikes < ActiveRecord::Migration[5.2]
  def change
    create_table :spikes do |t|
      t.integer :maker, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.string :color, null: false
      t.text :characteristic, null: false
      t.string :images, null: false

      t.timestamps
    end
  end
end
