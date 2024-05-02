class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :location
      t.decimal :salary
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
