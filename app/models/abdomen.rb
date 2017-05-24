class Abdomen < ApplicationRecord
  PALPATION_TYPE = ["NINGUNA", "HD","EPIG", "HI", "FD", "UMB", "FI", "FID", "HIPOG", "FII", "GENERALIZADO"].freeze
  BLOAT_TYPE = ["NINGUNO","NORMAL", "AUMENTADO"].freeze
  AUSCULTATION_TYPE = ["NINGUNO","NORMAL", "AUMENTADOS", "DISMINUIDOS"].freeze
end
