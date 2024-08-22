class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.date :date
      t.decimal :price
      t.string :location

      t.timestamps
    end
  end
end
