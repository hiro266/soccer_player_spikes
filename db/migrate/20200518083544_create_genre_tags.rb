class CreateGenreTags < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_tags do |t|
      t.string :genre

      t.timestamps
    end
    add_index :genre_tags, :genre, unique: true
  end
end
