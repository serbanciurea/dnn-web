class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :address, :string
    add_column :users, :sponsor, :string
    add_column :users, :driver, :boolean
    add_column :users, :pts_number, :string
  end
end
