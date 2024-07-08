class RemoveForeignKeyFromProjectPorts < ActiveRecord::Migration[7.1]
  def change
    remove_reference :project_ports, :department, foreign_key: true
  end
end
