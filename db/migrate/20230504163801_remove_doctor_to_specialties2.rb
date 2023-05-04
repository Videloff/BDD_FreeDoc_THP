class RemoveDoctorToSpecialties2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :specialties, :doctor_id
  end
end
