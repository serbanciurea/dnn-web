class AddTypeToCourse < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :type, :text
  end
end
