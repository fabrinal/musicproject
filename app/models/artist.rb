class Artist < ActiveRecord::Base
  belongs_to :albums
  belongs_to :songs
end
