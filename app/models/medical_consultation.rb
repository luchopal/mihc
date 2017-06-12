class MedicalConsultation < ApplicationRecord
  belongs_to :patient
  has_one :physical_exam
  has_many :complementary_exams, inverse_of: :medical_consultation
  has_many :laboratories, inverse_of: :medical_consultation
  accepts_nested_attributes_for :physical_exam, :complementary_exams,:laboratories

  def self.search(patient_id, page)
    if patient_id
      @patients = MedicalConsultation.where("patient_id = #{patient_id}").paginate(page: page, per_page: 5).order('id DESC')
    else
      paginate(page: page, per_page: 5).order('id DESC')
    end
  end

end
