class Patient < ApplicationRecord
  MARITAL_STATUS = ["SOLTERO","CASADO", "VIUDO", "DIVORCIADO"].freeze
  SEX = ["MASCULINO","FEMENINO"].freeze
  has_many :relatives
  accepts_nested_attributes_for :relatives,:reject_if => :all_blank,:allow_destroy => true
end
