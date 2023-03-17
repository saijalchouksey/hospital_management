class CreateHospitals < ActiveRecord::Migration[7.0]
  def change
    create_table :hospitals do |t|
      t.integer :hospital_number
      t.string :hospital_name
      t.string :hospital_city
      t.string :hospital_address
      t.string :hospital_type

      t.timestamps
    end
  end
end
