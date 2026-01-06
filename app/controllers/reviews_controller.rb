class ReviewsController < ApplicationController
  def create
    song = Song.find(review_params[:song_id])
    user = User.find(review_params[:user_id])
    review = Review.new(song: song, user: user, rating: review_params[:rating], comment: review_params[:comment])
    if review.save
      redirect_to song
    else 
      raise "An error occured during the saving of the review : #{review}"
    end
  end

  private
  def review_params
    params.require(:review).permit(:song_id, :user_id, :rating, :comment)
  end
end
