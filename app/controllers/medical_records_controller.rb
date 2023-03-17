class MedicalRecordsController < ApplicationController
  def index
    @medical_records = Medicalrecord.all
  end

  def new
    @medical_record = Medicalrecord.new
  end

  def create
    @medical_record = Medicalrecord.new(medicalrecord_params)
 
    if @medical_record.save
      # binding.pry
      redirect_to medical_record_path(@medical_record)
    else
      render 'new'
    end
  end

  def show
    @medical_record = Medicalrecord.find(params[:id])
  end

  def edit
    @medical_record = Medicalrecord.find(params[:id])
  end

  def update
    @medical_record = Medicalrecord.find(params[:id])
 
    if @medical_record.update(medicalrecord_params)
      redirect_to @medical_record
    else
      render 'edit'
    end
  end

  def destroy
    @medical_record = Medicalrecord.find(params[:id])
    @medical_record.destroy
 
    redirect_to medical_records_path
  end

  private
  def medicalrecord_params
    params.require(:medicalrecord).permit(:date_of_admit, :date_of_discharge, :doctor_fees, :room_charge, :total_bill)
  end
end
