class PlaylistsController < ApplicationController
  def show
    @songs = Playlist.find(params[:id]).song
  end
end
