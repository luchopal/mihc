class AddIndexToRelativePatient < ActiveRecord::Migration[5.0]
  def change
    add_index :relatives, :patient_id
  end
end
