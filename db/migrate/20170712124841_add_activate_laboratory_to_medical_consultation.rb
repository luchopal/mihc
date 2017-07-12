class AddActivateLaboratoryToMedicalConsultation < ActiveRecord::Migration[5.0]
  def change
    add_column :medical_consultations, :activate_laboratory, :boolean
  end
end
