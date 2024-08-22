class AddEndDateToCourse < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :end_date, :date
  end
end
