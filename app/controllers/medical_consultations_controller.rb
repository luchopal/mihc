class MedicalConsultationsController < ApplicationController

  def new
    @medical_consultation = MedicalConsultation.new
  end

end
