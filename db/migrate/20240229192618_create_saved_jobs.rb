class CreateSavedJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :saved_jobs do |t|
      t.references :job, null: false, foreign_key: true
      t.references :job_seeker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
