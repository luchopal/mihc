class MedicalConsultation < ApplicationRecord
  belongs_to :patient
  has_one :physical_exam
  has_many :complementary_exams, inverse_of: :medical_consultation
  has_many :laboratories, inverse_of: :medical_consultation
  has_many :evolutions, inverse_of: :medical_consultation
  accepts_nested_attributes_for :physical_exam, :complementary_exams,:laboratories, allow_destroy: true

  def self.search(medical_consultation_id, page)
    if medical_consultation_id
      @patients = MedicalConsultation.where("patient_id = #{medical_consultation_id}").paginate(page: page, per_page: 5).order('id DESC')
    else
      paginate(page: page, per_page: 5).order('id DESC')
    end
  end

end
