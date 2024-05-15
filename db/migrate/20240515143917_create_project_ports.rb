class CreateProjectPorts < ActiveRecord::Migration[7.1]
  def change
    create_table :project_ports do |t|
      t.string :name
      t.text :description
      t.string :collaborations

      t.timestamps
    end
  end
end
