class Attribut < ApplicationRecord
  has_many :doctors
  has_many :specialities
end
