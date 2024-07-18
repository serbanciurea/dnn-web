class UsersController < ApplicationController
  after_action :verify_authorized, only: [:show, :index]
  before_action :set_user, only: [:show]

  # def index
  #   @users = policy_scope(User) # This applies the policy scope
  #   @markers = @users.geocoded.map do |user|
  #     {
  #       lat: user.latitude,
  #       lng: user.longitude
  #     }
  #   end
  # end

  def show
    authorize @user # This ensures the policy is applied for the show action
  end

  def index
    authorize User
    @users = policy_scope(User)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
