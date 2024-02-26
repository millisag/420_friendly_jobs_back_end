class CreateJobSeekers < ActiveRecord::Migration[7.1]
  def change
    create_table :job_seekers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :work_history
      t.string :user_skill

      t.timestamps
    end
  end
end
