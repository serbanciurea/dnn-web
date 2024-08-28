class AddHoursToCourse < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :hours, :text
  end
end
