class Patient < ApplicationRecord
  MARITAL_STATUS = ["SOLTERO","CASADO", "VIUDO", "DIVORCIADO"].freeze
  SEX = ["MASCULINO","FEMENINO"].freeze

  has_many :relatives, inverse_of: :patient
  has_many :medical_consultations
  accepts_nested_attributes_for :relatives, reject_if: proc { |relatives| relatives[:status].blank? }
end
