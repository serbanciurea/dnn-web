class AddCompetencyToJobs < ActiveRecord::Migration[7.1]
  def change
    add_reference :jobs, :competency, foreign_key: true

  end
end
