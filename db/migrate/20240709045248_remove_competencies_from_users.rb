class RemoveCompetenciesFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :competencies, :string
  end
end
