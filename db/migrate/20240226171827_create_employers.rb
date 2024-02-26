class CreateEmployers < ActiveRecord::Migration[7.1]
  def change
    create_table :employers do |t|
      t.string :company_name
      t.string :email

      t.timestamps
    end
  end
end
