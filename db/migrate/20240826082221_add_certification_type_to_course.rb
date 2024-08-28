class AddCertificationTypeToCourse < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :certification, :text
  end
end
