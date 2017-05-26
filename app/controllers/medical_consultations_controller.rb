class MedicalConsultationsController < ApplicationController

  def new
    @medical_consultation = MedicalConsultation.new
    @medical_consultation.physical_exam = PhysicalExam.new
    @medical_consultation.physical_exam.abdomen = Abdomen.new
    @medical_consultation.physical_exam.proctochological_examination = ProctochologicalExamination.new
    @medical_consultation.physical_exam.inguinocrural_examination = InguinocruralExamination.new
    @patient_id = params[:format]
  end

  def medical_consultation_params
    params.require(:medical_consultation).permit(:date, :reason, :patient_id, physical_exam_attributes: [:overall_status, :activate_abdomen,
          abdomen_attributes: [:inspection, :plane, :spherical, :relaxed, :asymmetric, :umbilical_hernia, :eventration, :location, :size,
          :scar, :msu, :miu, :xp, :mc_burney, :kocher, :pfannenstiel, :others, :others_description,:palpation, :soft, :uptight, :painful,
          :superficial_pain, :deep_pain, :defence, :peritoneal_reaction, :percussion, :bloat, :auscultation, :auscultation_location],
          proctochological_examination_attributes: [ :physical_exam_id,:sking_lesion,:hematoma,:traumatic_injury,:uncomplicated_hemorrhoids,
          :acute_fissure,:chronic_fissure,:fistulous_orifice,:bulging,:plicoma,:redness,:thrombosis_hemorrhoids,:fluxion_hemorrhoids,
          :hemorrhage_hemorrhoids, :anal_sphincter_tonicity,:rectal_ampoule,:occupied_rectal_ampoule,:formation],
          inguinocrural_examination_attributes: [:left_reductible_inguinal_hernia,:right_reductible_inguinal_hernia,:left_coercible_inguinal_hernia,
          :right_coercible_inguinal_hernia, :left_reductible_crural_hernia,:right_reductible_crural_hernia,:left_coercible_crural_hernia,
          :right_coercible_crural_hernia]
    ])
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
