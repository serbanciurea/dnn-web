class CoursesController < ApplicationController
  # before_action :set_course, only: [:show, :edit, :update, :destroy]
  # before_action :authorize_course, except: [:index, :show, :filter_by_category]
  # after_action :verify_policy_scoped, only: :index


  # skip_before_action :authenticate_user!, only: [:index, :show, :filter_by_department]

  # after_action :verify_authorized, except: [:index, :show, :filter_by_department]


    skip_before_action :authenticate_user!, only: [:index, :show, :filter_by_category]

  before_action :set_course, only: %i[ show edit update destroy ]

  # before_action :authenticate_user!
  before_action :authorize_course, only: [:new, :create, :edit, :update, :destroy]

  after_action :verify_authorized, except: [:index, :show, :filter_by_category]
  after_action :verify_policy_scoped, only: :index

  def filter_by_category
    if params[:category] == 'ALL' || params[:category].blank?
      @courses = Course.all
    else
      @courses = Course.where("category LIKE ?", "%#{params[:category]}%")
    end

    respond_to do |format|
      format.html { render partial: 'courses_list', locals: { courses: @courses } }
      format.json { render json: @courses }
    end
  end

  def index
    @courses = policy_scope(Course)
    authorize Course
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_url, notice: 'Course was successfully destroyed.'
  end

  private

  def set_course
    @course = Course.find(params[:id])
    authorize @course  # Ensure authorization for individual records
  end

  def course_params
    params.require(:course).permit(
      :name,
      :start_date,
      :end_date,
      :member_number,
      :price,
      :location,
      :description,
      category: []
    )
  end

  def authorize_course
    authorize Course
  end
end
