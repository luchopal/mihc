class Patient < ApplicationRecord
  MARITAL_STATUS = ["SOLTERO","CASADO", "VIUDO", "DIVORCIADO"].freeze
  SEX = ["MASCULINO","FEMENINO"].freeze

  has_many :relatives
  has_many :medical_consultations
  accepts_nested_attributes_for :relatives, reject_if: proc { |relatives| relatives[:status].blank? }

  def self.search(term, page)
    if term
      @patients = Patient.where("name ilike '%#{term}%' OR surname ilike '%#{term}%' OR document_number ilike '%#{term}%' OR associate_number ilike '%#{term}%'
      OR sex ilike '%#{term}%' OR marital_status ilike '%#{term}%' OR city ilike '%#{term}%' OR phone ilike '%#{term}%' OR close_person_phone ilike '%#{term}%'
      OR job ilike '%#{term}%'").paginate(page: page, per_page: 5).order('id DESC')
    else
      paginate(page: page, per_page: 5).order('id ASC')
    end
  end
end
