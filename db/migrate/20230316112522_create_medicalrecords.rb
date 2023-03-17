class CreateMedicalrecords < ActiveRecord::Migration[7.0]
  def change
    create_table :medicalrecords do |t|
      t.date :date_of_admit
      t.date :date_of_discharge
      t.integer :doctor_fees
      t.integer :room_charge
      t.integer :total_bill

      t.timestamps
    end
  end
end
