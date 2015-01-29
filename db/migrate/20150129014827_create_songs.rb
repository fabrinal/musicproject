class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_title
      t.references :artist_id, index: true
      t.references :album_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :songs, :artist_ids
    add_foreign_key :songs, :album_ids
  end
end
