class MedicalConsultation < ApplicationRecord
  belongs_to :patient
  has_one :physical_exam
end
