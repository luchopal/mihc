class MedicalConsultation < ApplicationRecord
  belongs_to :patient
  has_one :physical_exam
  accepts_nested_attributes_for :physical_exam
end
