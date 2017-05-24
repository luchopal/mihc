class AddPatientIdToMedicalConsultation < ActiveRecord::Migration[5.0]
  def change
      add_column :medical_consultations, :patient_id, :integer
  end
end
