class DoctorsController < ApplicationController
  before_action :set_hospital
  before_action :set_doctor, only: [:show, :update, :destroy]

  # GET /doctors
  def index
    @doctors = @hospital.doctors

    render json: @doctors
  end

  # GET /doctors/1
  def show
    render json: @doctor
  end

  # POST /doctors
  def create
    @doctor = @hospital.doctors.new(doctor_params)

    if @doctor.save
      render json: @doctor, status: :created
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1
  def update
    if @doctor.update(doctor_params)
      render json: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1
  def destroy
    @doctor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def set_hospital
      hospital_id = params.require(:hospital_id)
      @hospital = Hospital.find_by!(id: hospital_id)
    end

    # Only allow a list of trusted parameters through.
    def doctor_params
      params.require(:doctor).permit(:hospital_id, :name, :degree, :speciality, :experiance)
    end
end
