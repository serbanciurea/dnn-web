class DropProjectsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :projects
  end
end
