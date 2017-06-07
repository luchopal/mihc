class ComplementaryExam < ApplicationRecord
  TYPE = ["Radiologia", "Ecografia","Tomografia", "RNM", "Veda", "VCC", "CPRE", "Cardiologia", "Otros"].freeze
  belongs_to :medical_consultation
end
