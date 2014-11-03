class AlienProbeDoctorsController < ApplicationController
  before_action :set_alien_probe_doctor, only: [:show, :edit, :update, :destroy]

  # GET /alien_probe_doctors
  # GET /alien_probe_doctors.json
  def index
    @alien_probe_doctors = AlienProbeDoctor.all
  end

  # GET /alien_probe_doctors/1
  # GET /alien_probe_doctors/1.json
  def show
  end

  # GET /alien_probe_doctors/new
  def new
    @alien_probe_doctor = AlienProbeDoctor.new
  end

  # GET /alien_probe_doctors/1/edit
  def edit
  end

  # POST /alien_probe_doctors
  # POST /alien_probe_doctors.json
  def create
    @alien_probe_doctor = AlienProbeDoctor.new(alien_probe_doctor_params)

    respond_to do |format|
      if @alien_probe_doctor.save
        format.html { redirect_to @alien_probe_doctor, notice: 'Alien probe doctor was successfully created.' }
        format.json { render :show, status: :created, location: @alien_probe_doctor }
      else
        format.html { render :new }
        format.json { render json: @alien_probe_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alien_probe_doctors/1
  # PATCH/PUT /alien_probe_doctors/1.json
  def update
    respond_to do |format|
      if @alien_probe_doctor.update(alien_probe_doctor_params)
        format.html { redirect_to @alien_probe_doctor, notice: 'Alien probe doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @alien_probe_doctor }
      else
        format.html { render :edit }
        format.json { render json: @alien_probe_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alien_probe_doctors/1
  # DELETE /alien_probe_doctors/1.json
  def destroy
    @alien_probe_doctor.destroy
    respond_to do |format|
      format.html { redirect_to alien_probe_doctors_url, notice: 'Alien probe doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alien_probe_doctor
      @alien_probe_doctor = AlienProbeDoctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alien_probe_doctor_params
      params.require(:alien_probe_doctor).permit(:name)
    end
end
