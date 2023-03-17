class Hospital < ApplicationRecord
  has_many :doctors, dependent: :destroy
  has_many :patients, dependent: :destroy
  validates :hospital_name, :hospital_city, :hospital_address, :hospital_type, presence: true
end
