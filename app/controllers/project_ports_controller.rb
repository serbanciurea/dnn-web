class ProjectPortsController < ApplicationController
  before_action :set_project_port, only: %i[ show edit update destroy ]

  before_action :authenticate_user!
  before_action :authorize_project_port, only: [:new, :create, :edit, :update, :destroy]

  after_action :verify_authorized, except: [:index, :show]
  after_action :verify_policy_scoped, only: :index

  # GET /project_ports or /project_ports.json
  def index
    # @project_ports = ProjectPort.all
    @project_ports = policy_scope(ProjectPort)
    # authorize @project_ports
  end

  # GET /project_ports/1 or /project_ports/1.json
  def show
    authorize @project_port
  end

  # GET /project_ports/new
  def new
    @project_port = ProjectPort.new
    authorize @project_port
  end

  # GET /project_ports/1/edit
  def edit
    authorize @project_port
  end

  # POST /project_ports or /project_ports.json
  def create
    @project_port = ProjectPort.new(project_port_params)
    authorize @project_port
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
      params.require(:project_port).permit(:name, :description, :collaborations, photos: [])
    end

    def authorize_project_port
      authorize @project_port || ProjectPort
    end

end
