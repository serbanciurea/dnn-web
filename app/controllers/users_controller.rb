class UsersController < ApplicationController
  after_action :verify_authorized, only: [:show, :index, :approve]
  before_action :set_user, only: [:show, :approve]
  before_action :authorize_admin, only: [:index, :approve, :update]

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
    @unapproved_users = policy_scope(User.where(approved: false))
    @users = User.all
    # Handle name and postcode search
  if params[:query].present?
    query = params[:query]
    @users = @users.where("last_name LIKE :query OR first_name LIKE :query", query: "%#{query}%")
  end

  # Handle postcode search
  if params[:postcode].present?
    postcode = params[:postcode]
    @users = @users.joins(:address).where("addresses.postcode LIKE ?", "%#{postcode}%")
  end

  # Handle competencies search
  if params[:competencies].present?
    competencies = params[:competencies].split(',').map(&:strip)
    @users = @users.joins(:competencies).where(competencies: { name: competencies }).distinct
  end

  # Handle driver status filter
  if params[:driver].present?
    @users = @users.where(driver: ActiveRecord::Type::Boolean.new.cast(params[:driver]))
  end

  # Handle sponsor filter
  if params[:sponsor].present?
    @users = @users.where(sponsor: params[:sponsor])
  end

  # Handle location and distance filter
  if params[:location].present? && params[:distance].present?
    location = params[:location]
    distance = params[:distance].to_f
    geocoded_location = Geocoder.search(location).first

    if geocoded_location
      @users = @users.near([geocoded_location.latitude, geocoded_location.longitude], distance)
    else
      flash.now[:alert] = "Location could not be found."
      @users = User.none # No users to display if location is invalid
    end
  end
end

  def update
    if @user.update(user_params)
      redirect_to :index, notice: 'User was successfully updated.'
    else
      render :index
    end
  end

  # def approve
  #   @user.update(approved: !@user.approved)
  #   redirect_to users_path, notice: "User's approval status has been updated."
  # end

  def approve
    authorize @user
    puts "Attempting to approve user ID: #{@user.id}"
    puts "Current user ID: #{current_user.id}"
    puts "Current user admin status: #{current_user.admin?}"

    if @user.update(approved: true)  # Or toggle the approved status as per your logic
      render json: { message: "User's approval status has been updated." }, status: :ok
    else
      render json: { error: "Failed to update user's approval status." }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :approved, :address, :sponsor, :driver, :pts_number, :phone)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def authorize_admin
    redirect_to(root_path, alert: 'Not authorized.') unless current_user.admin?
  end
end
