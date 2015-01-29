class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :artist_image
      t.string :website_link
      t.references :albums, index: true
      t.references :songs, index: true
      t.string :performances

      t.timestamps null: false
    end
    add_foreign_key :artists, :albums
    add_foreign_key :artists, :songs
  end
end
