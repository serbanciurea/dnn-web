class CompetenciesController < ApplicationController
  before_action :set_user
  before_action :set_competency, only: [:edit, :update, :destroy]

  def new
    @competency = @user.competencies.new
    authorize @competency
  end

  def create
    @competency = @user.competencies.new(competency_params)
    authorize @competency
    if params[:competency][:photo].present?
      upload_photo
    end
    if @competency.save
      redirect_to user_path(@user), notice: 'Competency was successfully created.'
    else
      render :new
    end
  end

  def edit
    authorize @competency
  end

  def update
    authorize @competency

    if upload_photo # Handle photo upload before updating
      if @competency.update(competency_params)
        redirect_to user_path(@user), notice: 'Competency was successfully updated.'
      else
        render :edit
      end
    else
      render :edit, alert: 'Photo upload failed.'
    end
  end

  def destroy
    authorize @competency
    @competency.destroy
    redirect_to user_path(@user), notice: 'Competency was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_competency
    @competency = @user.competencies.find(params[:id])
  end

  def competency_params
    params.require(:competency).permit(:name, :expiration_date, :photo)
  end

  # def upload_photo
  #   result = Cloudinary::Uploader.upload(params[:competency][:photo].tempfile.path)
  #   @competency.photo = result['public_id']  # Save the Cloudinary public ID or URL
  # end

  def upload_photo
    if params[:competency][:photo].present?
      Rails.logger.info("Uploading photo...")
      result = Cloudinary::Uploader.upload(params[:competency][:photo].tempfile.path)
      Rails.logger.info("Photo uploaded with public ID: #{result['public_id']}")
      @competency.photo.key = result['public_id']
    end
  end

end
