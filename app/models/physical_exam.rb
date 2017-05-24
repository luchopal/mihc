class PhysicalExam < ApplicationRecord
  has_one :abdomen
  accepts_nested_attributes_for :abdomen
end
