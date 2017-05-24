class MedicalConsultationsController < ApplicationController

  def new
    @medical_consultation = MedicalConsultation.new
    @medical_consultation.physical_exam = PhysicalExam.new
    @medical_consultation.physical_exam.abdomen = Abdomen.new
    @patient_id = params[:format]
  end

  def medical_consultation_params
    params.require(:medical_consultation).permit(:status, :patient_id, physical_exam_attributes: [:overall_status, :activate_abdomen,
          abdomen_attributes: [:inspection, :plane, :spherical, :relaxed, :asymmetric, :umbilical_hernia, :eventration, :location, :size,
          :scar, :msu, :miu, :xp, :mc_burney, :kocher, :pfannenstiel, :others, :others_description,:palpation, :soft, :uptight, :painful,
          :superficial_pain, :deep_pain, :defence, :peritoneal_reaction, :percussion, :bloat, :auscultation, :auscultation_location]])
  end

  def create

    @medical_consultation = MedicalConsultation.new(medical_consultation_params)
    @medical_consultation.patient = Patient.find(params[:patient_id])
    if @medical_consultation.save
      redirect_to '/patients/list'
    else
      flash[:error] = "Error al generar paciente."
      puts @medical_consultation.errors
      render 'new'
    end

  end
end
