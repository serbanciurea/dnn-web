class JobsController < ApplicationController

  # before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :index
  before_action :set_job, only: %i[ show edit update destroy ]
  before_action :authorize_job, except: [:index, :show]
  after_action :verify_policy_scoped, only: :index

  def index
    # @jobs = Job.all
    @jobs = policy_scope(Job)
    authorize Job
  end

  def show
    authorize @job
    authorize User
    @job = Job.find(params[:id])
    @users = User.all || []
    p @users

    if params[:query].present?
      @users = @users.where('first_name ILIKE ? OR last_name ILIKE ?', "%#{params[:query]}%", "%#{params[:query]}%")
    end

    if params[:postcode].present?
      @users = @users.where(address: params[:postcode])
    end

    if params[:competencies].present?
      competencies = params[:competencies].split(',').map(&:strip)
      @users = @users.joins(:competencies).where(competencies: { name: competencies })
    end

    if params[:driver].present?
      @users = @users.where(driver: params[:driver])
    end

    if params[:sponsor].present?
      @users = @users.where(sponsor: params[:sponsor])
    end

    if params[:location].present? && params[:distance].present?
      location = Geocoder.search(params[:location]).first
      if location
        @users = @users.near([location.latitude, location.longitude], params[:distance].to_i)
      end
    end
  end

  def new
    @job = Job.new
    authorize @job
  end

  def create
    @job = Job.new(job_params)
    authorize @job
    respond_to do |format|
      if @job.save
        format.html { redirect_to job_url(@job), notice: "Job was successfully created." }
        # format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize @job
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to job_url(@job), notice: "Job was successfully updated." }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # def send_email_to_user
  #   authorize @job, :send_email_to_user?
  #   user = User.find(params[:user_id])
  #   job = Job.find(params[:job_id])

  #   # Assuming you have a Mailer set up
  #   UserMailer.with(user: user, job: job).send_job_email.deliver_now

  #   render json: { message: 'Email sent' }
  # end

  def send_email_to_user
    puts "Job ID: #{params[:job_id]}"  # Check if the correct job ID is being passed
    @job = Job.find(params[:job_id])  # Ensure @job is set

    authorize @job, :send_email_to_user?  # This should be valid if @job is correctly set

    user = User.find(params[:user_id])
    job = Job.find(params[:job_id])

    UserMailer.send_job_email(user, job).deliver_now

    render json: { message: 'Email sent' }
  end

  def send_email_to_all
    @job = Job.find(params[:job_id])

    authorize @job, :send_email_to_user?

    user_ids = params[:user_ids]
    job = Job.find(params[:job_id])
    users = User.where(id: user_ids)

    # Send an email to each user
    users.each do |user|
      UserMailer.send_job_email(user, job).deliver_now
    end

    # Respond with a JSON message indicating success
    render json: { message: 'Email sent to all selected users' }
  end

  def edit
    authorize @job
  end

  def destroy
    @job.destroy!

    respond_to do |format|
      format.html { redirect_to jobs_url, notice: "Project port was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def job_params
    params.require(:job).permit(:title, :description, :location, :salary)
  end

  def authorize_job
    authorize Job
  end

end
