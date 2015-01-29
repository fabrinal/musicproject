class Song < ActiveRecord::Base
  belongs_to :artist_id
  belongs_to :album_id
end
