class Laboratory < ApplicationRecord
  TYPE = ["Hto.", "Hb","GB", "Gluc", "Urea", "Creat", "TGO", "TGP", "FAL", "Amilasa", "BT", "BD", "Prot. Tot.", "Alb", "NA+", "K+", "Plaq", "Conc. PT", "CEA, CA199, CA124"].freeze
  belongs_to :medical_consultation

  def self.get_laboratories(patient_id)
    if patient_id
      @laboratories = Laboratory.joins(:medical_consultation).where("patient_id = #{patient_id}").last(3)
    end
  end
end
