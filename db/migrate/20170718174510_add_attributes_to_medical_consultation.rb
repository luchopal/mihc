class AddAttributesToMedicalConsultation < ActiveRecord::Migration[5.0]
  def change
    add_column :medical_consultations, :anamnesis, :string
    add_column :medical_consultations, :medical_evolution, :string
  end
end
