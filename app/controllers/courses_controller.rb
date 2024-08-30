class CoursesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show, :filter_by_category, :show_by_name]

  before_action :set_course, only: %i[ show edit update destroy duplicate ]

  before_action :authorize_course, only: [:new, :create, :edit, :update, :duplicate, :destroy, :render_post_partial]

  after_action :verify_authorized, except: [:index, :show, :filter_by_category, :show_by_name]
  after_action :verify_policy_scoped, only: :index

  def render_post_partial
    @course = policy_scope(Course)
    @course = Course.find(params[:id])
    # p 'who are you??????'
    # p @course
    render partial: 'course_post', locals: { course: @course }
  end

  def filter_by_category

    @kids = policy_scope(Course)
    @kids = []

    duplicate_names = Course.group(:name).having("COUNT(*) > 1").pluck(:name)

    # Step 2: Retrieve courses with those duplicate names, excluding the first occurrence for each name
    @kids = Course.where(name: duplicate_names).where.not(id: Course.select("MIN(id)").group(:name).having("COUNT(*) > 1"))

    name = params[:name]
    category = params[:category].present? ? params[:category] : 'ALL'

    @categories = ['RAIL', 'CONSTRUCTION', 'MEDICALS']

    if category.blank? || category == 'ALL'
      @courses = Course.all
    else
      @courses = Course.where("category = ?", category)
    end

    if name.present?
      p "name: #{name}"
      @courses = @courses.where("name LIKE ?", "%#{name}%")
    end

    respond_to do |format|
      format.html do
        if request.xhr?
          render partial: 'courses_list', locals: { courses: @courses }
        else
          if params[:name] != ""
            redirect_to show_by_name_courses_path(name: params[:name])
          else
            render 'index'
          end
        end
      end
      format.json { render json: @courses }
    end

  end

  def index
    @categories = ['RAIL', 'CONSTRUCTION', 'MEDICALS']
    @courses = policy_scope(Course)
    @courses = []

    @kids = policy_scope(Course)
    @kids = []

    duplicate_names = Course.group(:name).having("COUNT(*) > 1").pluck(:name)

    # Step 2: Retrieve courses with those duplicate names, excluding the first occurrence for each name
    @kids = Course.where(name: duplicate_names).where.not(id: Course.select("MIN(id)").group(:name).having("COUNT(*) > 1"))


    authorize Course

    Rails.logger.debug "In index: @kids=#{@kids.inspect}"
  end

  def show_by_name
    @course_name = params[:name]
    all_courses = Course.where(name: @course_name)
    @course = all_courses.first
    @courses = all_courses[1..]
    # Rails.logger.debug "Params in show_by_name action: #{params.inspect}"
    # Rails.logger.debug "Courses found: #{@courses.inspect}"

    if params[:name].to_i != 0
      @course = Course.find(params[:name])
      @courses = Course.where(name: @course.name)
    end

    respond_to do |format|
      format.html # This will render the default view (e.g., app/views/courses/show.html.erb)
      format.json { render json: @courses }
    end

  end

  def show
  end

  def new
    p "here come the params #{params}"
    # if params[:duplicate]
    if params[:duplicate] == 'true' && params[:id].present?
      original_course = Course.find(params[:id])
      @course = original_course.dup
      @name = original_course.name
      @course.name = original_course.name
      @course.category = original_course.category
    else
      @course = Course.new
    end
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      # redirect_to show_by_name, notice: 'Course was successfully created.'
      redirect_to show_by_name_courses_path(name: @course.name), notice: 'Course was successfully created.'
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
      :hours,
      :certification,
      category: []
    )
  end

  def authorize_course
    authorize Course
  end
end
