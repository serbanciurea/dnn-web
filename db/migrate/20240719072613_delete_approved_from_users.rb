class DeleteApprovedFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_columns :users, :approved, :boolean
  end
end
