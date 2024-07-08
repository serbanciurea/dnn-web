class AddDepartmentToProjectPort < ActiveRecord::Migration[7.1]
  def change
    add_reference :project_ports, :department, null: false, foreign_key: true
  end
end
