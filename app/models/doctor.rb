class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :hospital
  validates :doctor_age,:doctor_fees,:doctor_gender,:doctor_name, :doctor_specialization, presence: true
end
