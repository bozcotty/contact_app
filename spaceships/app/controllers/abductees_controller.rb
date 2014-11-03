class AbducteesController < ApplicationController
  before_action :set_abductee, only: [:show, :edit, :update, :destroy]

  # GET /abductees
  # GET /abductees.json
  def index
    @abductees = Abductee.all
  end

  # GET /abductees/1
  # GET /abductees/1.json
  def show
  end

  # GET /abductees/new
  def new
    @abductee = Abductee.new
  end

  # GET /abductees/1/edit
  def edit
  end

  # POST /abductees
  # POST /abductees.json
  def create
    @abductee = Abductee.new(abductee_params)

    respond_to do |format|
      if @abductee.save
        format.html { redirect_to @abductee, notice: 'Abductee was successfully created.' }
        format.json { render :show, status: :created, location: @abductee }
      else
        format.html { render :new }
        format.json { render json: @abductee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abductees/1
  # PATCH/PUT /abductees/1.json
  def update
    respond_to do |format|
      if @abductee.update(abductee_params)
        format.html { redirect_to @abductee, notice: 'Abductee was successfully updated.' }
        format.json { render :show, status: :ok, location: @abductee }
      else
        format.html { render :edit }
        format.json { render json: @abductee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abductees/1
  # DELETE /abductees/1.json
  def destroy
    @abductee.destroy
    respond_to do |format|
      format.html { redirect_to abductees_url, notice: 'Abductee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abductee
      @abductee = Abductee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abductee_params
      params.require(:abductee).permit(:name)
    end
end
