class CreateEmployerProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :employer_profiles do |t|
      t.string :location
      t.string :industry
      t.integer :size
      t.text :about_us

      t.timestamps
    end
  end
end
