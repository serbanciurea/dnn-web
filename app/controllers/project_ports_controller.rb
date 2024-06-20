class ProjectPortsController < ApplicationController
  before_action :set_project_port, only: %i[ show edit update destroy ]

  before_action :authenticate_user!
  before_action :authorize_project_port, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_show_footer, only: [:new, :edit]

  after_action :verify_authorized, except: [:index, :show, :filter_by_department]
  after_action :verify_policy_scoped, only: :index

  def filter_by_department
    if params[:department] == 'all' || params[:department].blank?
      @projects = ProjectPort.all
    else
      # Assuming params[:department] is a string representing the enum key
      @projects = ProjectPort.where(department: params[:department])
    end

    respond_to do |format|
      format.html { render partial: 'projects_list', locals: { projects: @projects } }
      format.json { render json: @projects }
    end
  end


  def index
    # @project_ports = ProjectPort.all
    @projects = policy_scope(ProjectPort)
    # authorize @project_ports
  end

  def show
    authorize @project_port
  end

  def new
    @project_port = ProjectPort.new
    # @departments = Department.where(name: ['constructions', 'rail', 'electricity'])
    authorize @project_port
  end

  def edit
    authorize @project_port
    @project_port = ProjectPort.find(params[:id])
    # @departments = Department.where(name: ['constructions', 'rail', 'electricity'])
  end

  def create
    @project_port = ProjectPort.new(project_port_params)
      logger.debug "ProjectPort params: #{project_port_params.inspect}"
    authorize @project_port
    # raise
    respond_to do |format|
      if @project_port.save
        format.html { redirect_to project_port_url(@project_port), notice: "Project port was successfully created." }
        format.json { render :show, status: :created, location: @project_port }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_port.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_ports/1 or /project_ports/1.json
  def update
    authorize @project_port
    respond_to do |format|
      if @project_port.update(project_port_params)
        format.html { redirect_to project_port_url(@project_port), notice: "Project port was successfully updated." }
        format.json { render :show, status: :ok, location: @project_port }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_port.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_ports/1 or /project_ports/1.json
  def destroy
    @project_port.destroy!
    authorize @project_port
    respond_to do |format|
      format.html { redirect_to project_ports_url, notice: "Project port was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_port
      @project_port = ProjectPort.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_port_params
      params.require(:project_port).permit(:name, :description, :collaborations, :department, :client, :sector, :delivery_method, :completion_date, :location, :market, photos: [])
    end

    def authorize_project_port
      authorize @project_port || ProjectPort
    end

    def set_show_footer
      @show_footer = false
    end

end
