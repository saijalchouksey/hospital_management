class MedicalRecordsController < ApplicationController
  def index
    @medicalrecords = MedicalRecord.all
  end

  def new
    @medicalrecord = MedicalRecord.new
  end

  def create
    @medicalrecord = MedicalRecord.new(medicalrecord_params)
 
    if @medicalrecord.save
    redirect_to @medicalrecord
    else
      render 'new'
    end
  end

  def show
    @medicalrecord = MedicalRecord.find(params[:id])
  end

  def edit
    @medicalrecord = MedicalRecord.find(params[:id])
  end

  def update
    @medicalrecord = MedicalRecord.find(params[:id])
 
    if @medicalrecord.update(medicalrecord_params)
    redirect_to @medicalrecord
    else
    render 'edit'
    end
  end

  def destory
    @medicalrecord = MedicalRecord.find(params[:id])
    @medicalrecord.destroy
 
    redirect_to medicalrecords_path
  end

  private
  def medicalrecord_params
    params.require(:medicalrecord).permit(:date_of_admit, :date_of_discharge, :doctor_fees, :room_charge, :total_bill)
  end
end
