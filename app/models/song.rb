class Song < ApplicationRecord
  has_many :playlist_items
  has_many :playlist, through: :playlist_items
end
