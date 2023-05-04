class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :attributs
  has_many :specialities, through: :attributs
  has_one :city
end
