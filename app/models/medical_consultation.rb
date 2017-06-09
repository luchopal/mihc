class MedicalConsultation < ApplicationRecord
  belongs_to :patient
  has_one :physical_exam
  has_many :complementary_exams, inverse_of: :medical_consultation
  has_many :laboratories, inverse_of: :medical_consultation
  accepts_nested_attributes_for :physical_exam, :complementary_exams,:laboratories
end
