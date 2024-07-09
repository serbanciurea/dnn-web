class AddDefaultToDriverUser < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :driver, from: nil, to: false
  end
end
