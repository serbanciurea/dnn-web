class AddMemberNumberToCourse < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :member_number, :integer
  end
end
