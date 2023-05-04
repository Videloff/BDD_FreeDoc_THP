class AddDoctorToAttributs < ActiveRecord::Migration[7.0]
  def change
    add_reference :attributs, :doctor, index: true, foreign_key: true
  end
end
