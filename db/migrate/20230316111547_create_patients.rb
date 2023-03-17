class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :patient_name
      t.string :patient_disease
      t.string :patient_address
      t.integer :patient_age
      t.string :patient_gender

      t.timestamps
    end
  end
end
