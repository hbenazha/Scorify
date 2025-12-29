class AddRatingAndCommentToPlaylistItems < ActiveRecord::Migration[8.1]
  def change
    add_column :playlist_items, :rating, :integer
    add_column :playlist_items, :comment, :text
  end
end
