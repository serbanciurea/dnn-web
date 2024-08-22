class RenameDateColumnInCourse < ActiveRecord::Migration[7.1]
def change
    rename_column :courses, :date, :start_date
  end
end
