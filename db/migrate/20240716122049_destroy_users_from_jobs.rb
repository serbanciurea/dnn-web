class DestroyUsersFromJobs < ActiveRecord::Migration[7.1]
  def change
    remove_column :jobs, :user_id, :integer
  end
end
