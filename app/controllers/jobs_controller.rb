class JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_job, only: %i[ show edit update destroy ]
  before_action :authorize_job, except: [:index, :show]
  after_action :verify_policy_scoped, only: :index

  def index
    # @jobs = Job.all
    @jobs = policy_scope(Job)
    authorize Job
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

  def show
    authorize @job
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
