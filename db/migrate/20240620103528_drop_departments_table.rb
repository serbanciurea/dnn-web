class DropDepartmentsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :departments
  end
end
