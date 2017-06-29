class MedicalConsultationsController < ApplicationController

  include SessionsHelper

  before_action :require_login

  def new
    @medical_consultation = MedicalConsultation.new
    @medical_consultation.physical_exam = PhysicalExam.new
    @medical_consultation.physical_exam.abdomen = Abdomen.new
    @medical_consultation.physical_exam.proctochological_examination = ProctochologicalExamination.new
    @medical_consultation.physical_exam.inguinocrural_examination = InguinocruralExamination.new
    @medical_consultation.physical_exam.cervical_examination = CervicalExamination.new
    @medical_consultation.physical_exam.breast_exam = BreastExam.new
    @medical_consultation.physical_exam.skin_lesion_exam = SkinLesionExam.new

    @patient_id = params[:format]
  end

  def medical_consultation_params
    params.require(:medical_consultation).permit(:date, :reason, :patient_id,
         physical_exam_attributes: [:overall_status, :activate_abdomen, :activate_proctochological_examination, :activate_inquinocrural_examination,
          :activate_breast_exam,:activate_skin_lesion, :activate_cervical_examination,
          abdomen_attributes: [:inspection, :plane, :spherical, :relaxed, :asymmetric, :umbilical_hernia, :eventration, :location, :size,
          :scar, :msu, :miu, :xp, :mc_burney, :kocher, :pfannenstiel, :others, :others_description,:palpation, :soft, :uptight, :painful,
          :superficial_pain, :deep_pain, :defence, :peritoneal_reaction, :percussion, :bloat, :auscultation, :auscultation_type, :auscultation_location],

          proctochological_examination_attributes: [ :physical_exam_id,:sking_lesion,:hematoma,:traumatic_injury,:uncomplicated_hemorrhoids,
          :acute_fissure,:chronic_fissure,:fistulous_orifice,:bulging,:plicoma,:redness,:thrombosis_hemorrhoids,:fluxion_hemorrhoids,
          :hemorrhage_hemorrhoids, :anal_sphincter_tonicity,:rectal_ampoule,:occupied_rectal_ampoule,:formation, :formation_position],

          inguinocrural_examination_attributes: [:left_reductible_inguinal_hernia,:right_reductible_inguinal_hernia,:left_coercible_inguinal_hernia,
          :right_coercible_inguinal_hernia, :left_reductible_crural_hernia,:right_reductible_crural_hernia,:left_coercible_crural_hernia,:right_coercible_crural_hernia],

          cervical_examination_attributes: [:lateral_tumor,:left_lateral_tumor,:right_lateral_tumor,:tumor_description, :central_tumor,:central_tumor_description],

          breast_exam_attributes: [:left_breast_first_quadrant,:left_breast_second_quadrant,:left_breast_third_quadrant,:left_breast_fourth_quadrant,:left_breast_center,:right_breast_first_quadrant,
          :right_breast_second_quadrant,:right_breast_third_quadrant,:right_breast_fourth_quadrant, :right_breast_center, :breast_description, :right_armpit,:left_armpit],

          skin_lesion_exam_attributes: [:skin_lesion_description]],

        complementary_exams_attributes: [:complementary_exam_type, :comment, :_destroy],

        laboratories_attributes: [:hto,:hb,:gb,:gluc,:urea,:creat,:tgo,:tgp,:fal,:amilasa,:bt,:bd,:prot_tot,:alb,:na,:k,:plaq,:conc_pt,:cea,:ca199,:ca124,:date,:_destroy]
    )
  end

  def create

    @medical_consultation = MedicalConsultation.new(medical_consultation_params)
    @medical_consultation.patient = Patient.find(params[:patient_id])
    if @medical_consultation.save
      redirect_to '/patients/'
    else
      flash[:error] = "Error al generar paciente."
      puts @medical_consultation.errors
      render 'new'
    end

  end

  def index
    @patient_id = params[:format]
    @medical_consultations = MedicalConsultation.search(@patient_id, params[:page])
  end

  def show
    @medical_consultation_id = params[:id]
    @patientId = params[:format]
    @medical_consultation = MedicalConsultation.find(@medical_consultation_id)
  end

end
