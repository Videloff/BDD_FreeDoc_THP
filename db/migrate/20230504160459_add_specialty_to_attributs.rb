class AddSpecialtyToAttributs < ActiveRecord::Migration[7.0]
  def change
    add_reference :attributs, :specialty, index: true, foreign_key: true
  end
end
