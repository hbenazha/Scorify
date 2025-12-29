class AddForeignKeyToPlaylistItem < ActiveRecord::Migration[8.1]
  def change
    add_reference :playlist_items, :song, null: false, foreign_key: true
    add_reference :playlist_items, :playlist, null: false, foreign_key: true
  end
end
