class Playlist < ApplicationRecord
  has_many :playlist_items
  has_many :song, through: :playlist_items
end
