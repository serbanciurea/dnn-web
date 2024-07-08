class AddFieldsToProjectPort < ActiveRecord::Migration[7.1]
  def change
    add_column :project_ports, :client, :string
    add_column :project_ports, :sector, :text
    add_column :project_ports, :delivery_method, :text
    add_column :project_ports, :completion_date, :date
    add_column :project_ports, :location, :text
    add_column :project_ports, :market, :text
  end
end
