class PlaylistItemsController < ApplicationController
  def create
    playlist = Playlist.find(params[:playlist_id])
    song = Song.find(playlist_item_params[:id])
    playlist_item = PlaylistItem.new(playlist: playlist, song: song, rating: playlist_item_params[:rating], comment: playlist_item_params[:comment])
    playlist_item.save
  end

  def update
    playlist = Playlist.find(params[:playlist_id])
    song = Song.find(playlist_item_params[:song_id])
    playlist_item = PlaylistItem.find_by(playlist: playlist, song: song)
    playlist_item.rating = playlist_item_params[:rating]
    playlist_item.comment = playlist_item_params[:comment]
    playlist_item.save
  end 

  private

  def playlist_item_params
    params.require(:playlist_item).permit(:song_id, :rating, :comment)
  end

end
