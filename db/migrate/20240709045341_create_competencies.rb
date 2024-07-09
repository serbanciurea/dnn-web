class CreateCompetencies < ActiveRecord::Migration[7.1]
  def change
    create_table :competencies do |t|
      t.string :name
      t.date :expiration_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
