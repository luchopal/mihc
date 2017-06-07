class Laboratory < ApplicationRecord
  TYPE = ["Hto.", "Hb","GB", "Gluc", "Urea", "Creat", "TGO", "TGP", "FAL", "Amilasa", "BT", "BD", "Prot. Tot.", "Alb", "NA+", "K+", "Plaq", "Conc. PT", "CEA, CA199, CA124"].freeze
  belongs_to :medical_consultation
end
