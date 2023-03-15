class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new(hospital_params)
 
    if @hospital.save
    redirect_to @hospital
    else
      render 'new'
    end
  end

  def show
    @hospital = Hospital.find(params[:id])
  end

  def edit
    @hospital = Hospital.find(params[:id])
  end

  def update
    @hospital = Hospital.find(params[:id])
 
    if @hospital.update(hospital_params)
    redirect_to @hospital
    else
    render 'edit'
    end
  end

  def destory
    @hospital = Hospital.find(params[:id])
    @hospital.destroy
 
    redirect_to hospitals_path
  end

  private
  def hospital_params
    params.require(:hospital).permit(:H_id, :H_name, :H_city, :H_address, :H_type)
  end

end
