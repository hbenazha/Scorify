class UsersController < ApplicationController
  def create
    @user = User.new(name: user_params[:name])
    if @user.save
        redirect_to "/"
    else
      raise "Error during user creation"
    end
  end

  def new
    @user = User.new()
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
