class PhysicalExam < ApplicationRecord
  OVERALL_STATUS_TYPE = ["BUENO","REGULAR", "MALO"].freeze
  has_one :abdomen
  has_one :proctochological_examination
  has_one :inguinocrural_examination
  has_one :breast_exam
  has_one :skin_lesion_exam
  has_one :cervical_examination
  accepts_nested_attributes_for :abdomen, :proctochological_examination, :inguinocrural_examination, :breast_exam, :skin_lesion_exam, :cervical_examination
end
