class PhysicalExam < ApplicationRecord
  has_one :abdomen
  has_one :proctochological_examination
  has_one :inguinocrural_examination
  accepts_nested_attributes_for :abdomen, :proctochological_examination, :inguinocrural_examination
end
