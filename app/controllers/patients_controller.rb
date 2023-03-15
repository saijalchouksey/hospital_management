class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
 
    if @patient.save
    redirect_to @patient
    else
      render 'new'
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
 
    if @patient.update(hospital_params)
    redirect_to @patient
    else
    render 'edit'
    end
  end

  def destory
    @patient = Patient.find(params[:id])
    @patient.destroy
 
    redirect_to patients_path
  end

  private
  def patient_params
    params.require(:patient).permit(:p_name, :p_disease, :p_address, :p_age, :p_gender)
  end
end
