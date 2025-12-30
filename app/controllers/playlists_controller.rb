class PlaylistsController < ApplicationController
  def show
    @playlist = Playlist.find(params[:id])
    @songs = @playlist.song
    @playlist_items = @playlist.playlist_items.index_by { |item| item.song_id }
  end
end
