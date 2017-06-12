class PatientsController < ApplicationController

  def patient_params
    params.require(:patient).permit(:name, :surname, :document_number,:associate_number, :birth_date, :sex, :country_code,
                                    :marital_status, :city, :phone, :close_person_phone, :job, :asthma, :hearth_failure,
                                    :ischemic_heart_disease, :arteriopathy, :arterial_hypertension, :stroke, :diabetes,
                                    :dyslipidemia,:renal_insufficiency,:liver_disease,:ulcer_disease, :hematological_disease,
                                    :tuberculosis, :aids, :do_drugs, :alcoholism, :smoking, :allergies, :others, :others_description,
                                    :medicines, :surgical_history, relatives_attributes: [:status, :bond, :observation, :_destroy])
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def list
    @patients = Patient.all
  end

  def create

    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to '/patients/list'
    else
      flash[:error] = "Error al generar paciente."
      render 'new'
    end

  end

  def update
    @patient = Patient.find(params[:id])

    if @patient.update_attributes(patient_params)
      redirect_to :action => 'list'
    else
      render :action => 'edit'
    end
  end

  def index
    @patients = Patient.search(params[:term], params[:page])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

end
