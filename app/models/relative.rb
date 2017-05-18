class Relative < ApplicationRecord
  STATUS = ["VIVO/A","FALLECIDO/A"].freeze
  BOND = ["MADRE", "PADRE", "HERMANO/A", "HIJO/A"].freeze
  belongs_to :patient
end
