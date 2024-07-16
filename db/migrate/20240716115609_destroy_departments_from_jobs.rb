class DestroyDepartmentsFromJobs < ActiveRecord::Migration[7.1]
  def change
    remove_column :jobs, :department_id, :integer
  end
end
