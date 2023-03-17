class Medicalrecord < ApplicationRecord
  belongs_to :patient
  validates :date_of_admit, :date_of_discharge, :doctor_fees, :room_charge, :total_bill, presence: true
end
