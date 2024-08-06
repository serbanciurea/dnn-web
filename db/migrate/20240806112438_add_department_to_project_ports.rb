class AddDepartmentToProjectPorts < ActiveRecord::Migration[7.1]
  def change
    add_column :project_ports, :department, :string
  end
end
