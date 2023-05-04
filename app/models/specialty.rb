class Specialty < ApplicationRecord
  has_many :attributs
  has_many :doctors, through: :attributs
end
