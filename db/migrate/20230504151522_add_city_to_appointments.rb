class AddCityToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :city, index: true, foreign_key: true
  end
end
