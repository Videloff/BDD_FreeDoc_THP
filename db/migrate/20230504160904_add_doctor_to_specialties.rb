class AddDoctorToSpecialties < ActiveRecord::Migration[7.0]
  def change
    add_reference :specialties, :doctor, index: true, foreign_key: true
  end
end
