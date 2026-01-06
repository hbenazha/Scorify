class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @reviews = @song.reviews
    @users = User.order(:name)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(name: song_params[:name], artist: song_params[:artist], url: song_params[:url])
    if @song.save
      redirect_to "/"
    else
      raise "Something wrong happened during the song creation"
    end
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist, :url)
  end
end
