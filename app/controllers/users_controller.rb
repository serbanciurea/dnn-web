class UsersController < ApplicationController
  def index
    @users = User.all
    # The `geocoded` scope filters only users with coordinates
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(flat_params)
    @user.save
    redirect_to flat_path(@user)
  end
end
