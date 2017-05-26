class AddReasonMedicalConsultations < ActiveRecord::Migration[5.0]
  def change
    add_column :medical_consultations, :reason, :string
  end
end
