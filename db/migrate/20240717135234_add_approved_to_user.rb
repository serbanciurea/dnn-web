class AddApprovedToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :approved, :boolean
  end
end
