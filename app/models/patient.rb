class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors , through: :appointments
  has_one :medical_record
  belongs_to :hospital

  validates :patient_name, :patient_address,:patient_age, :patient_disease, :patient_gender, presence: true
end
