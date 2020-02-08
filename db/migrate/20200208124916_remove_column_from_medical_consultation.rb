class RemoveColumnFromMedicalConsultation < ActiveRecord::Migration[5.0]
  def change
    remove_column :medical_consultations, :medical_evolution
  end
end
