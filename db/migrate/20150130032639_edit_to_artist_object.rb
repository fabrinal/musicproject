class EditToArtistObject < ActiveRecord::Migration
  def change
    add_column :artists, :username, :string
    add_column :artists, :password, :string
  end
end
