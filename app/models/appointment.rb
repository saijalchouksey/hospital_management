class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  # validates :appointment_date,:appointment_number, presence: true
end
