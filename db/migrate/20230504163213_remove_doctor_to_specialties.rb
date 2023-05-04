class RemoveDoctorToSpecialties < ActiveRecord::Migration[7.0]
  def change
    remove_column :specialties, :doctor
  end
end
