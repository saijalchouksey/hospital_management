class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :doctor_name
      t.string :doctor_specialization
      t.integer :doctor_fees
      t.integer :doctor_age
      t.integer :doctor_gender

      t.timestamps
    end
  end
end
