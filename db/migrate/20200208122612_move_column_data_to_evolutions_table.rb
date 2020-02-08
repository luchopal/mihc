class MoveColumnDataToEvolutionsTable < ActiveRecord::Migration[5.0]
  MedicalConsultation.find_each do |medicalConsultation|
    medicalConsultation.evolutions.create(
    :description => medicalConsultation.medical_evolution,
    :medical_consultation_id => medicalConsultation.id,
    :date => medicalConsultation.date
    )
  end
end
