class AddDepartmentRefToJobs < ActiveRecord::Migration[7.1]
  def change
    add_reference :jobs, :department, null: false, foreign_key: true
  end
end
