class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to @employee
    else
      render 'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to @employee
    else
      render 'edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  # thi is for map
  # def map
  #   @users = User.all
  # end

  private

  private

  def employee_params
    params.require(:employee).permit(:name, :position, :email, :phone)
  end

  # map
  # def user_params
  #   params.require(:user).permit(:name, :address, competencies_attributes: [:id, :name, :expiry_date, :_destroy])
  # end

end
