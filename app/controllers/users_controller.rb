class UsersController < ApplicationController
  after_action :verify_authorized, only: [:show, :index, :approve]
  before_action :set_user, only: [:show]
  before_action :authorize_admin, only: [:index, :approve]

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

  def approve
    @user.update(approved: !@user.approved)
    redirect_to users_path, notice: "User's approval status has been updated."
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def authorize_admin
    redirect_to(root_path, alert: 'Not authorized.') unless current_user.admin?
  end
end
