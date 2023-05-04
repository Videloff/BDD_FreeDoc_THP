class AddCityToPatients < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :city, index: true, foreign_key: true
  end
end
