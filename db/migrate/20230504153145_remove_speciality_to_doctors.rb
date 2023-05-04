class RemoveSpecialityToDoctors < ActiveRecord::Migration[7.0]
  def change
    remove_column :doctors, :speciality 
  end
end
