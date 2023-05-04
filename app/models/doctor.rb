class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_one :city
end
