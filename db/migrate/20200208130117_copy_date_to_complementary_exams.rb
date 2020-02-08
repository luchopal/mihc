class CopyDateToComplementaryExams < ActiveRecord::Migration[5.0]
  MedicalConsultation.find_each do |medicalConsultation| 
    medicalConsultation.complementary_exams.find_each do |complementary|
      complementary.update_columns(date: medicalConsultation.date)
    end
  end
end
