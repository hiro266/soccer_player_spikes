class CreateGenreTags < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_tags do |t|
      t.string :genre, null: false, unique: true

      t.timestamps
    end
  end
end
