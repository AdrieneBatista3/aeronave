class AeronavesController < ApplicationController
  before_action :set_aeronafe, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
  # GET /aeronaves
  # GET /aeronaves.json
  def index
    @aeronaves = Aeronave.all
  end

  # GET /aeronaves/1
  # GET /aeronaves/1.json
  def show
  end

  # GET /aeronaves/new
  def new
    @aeronafe = Aeronave.new
  end

  # GET /aeronaves/1/edit
  def edit
  end

  # POST /aeronaves
  # POST /aeronaves.json
  def create
    @aeronafe = Aeronave.new(aeronafe_params)

    respond_to do |format|
      if @aeronafe.save
        format.html { redirect_to @aeronafe, notice: 'Aeronave was successfully created.' }
        format.json { render :show, status: :created, location: @aeronafe }
      else
        format.html { render :new }
        format.json { render json: @aeronafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aeronaves/1
  # PATCH/PUT /aeronaves/1.json
  def update
    respond_to do |format|
      if @aeronafe.update(aeronafe_params)
        format.html { redirect_to @aeronafe, notice: 'Aeronave was successfully updated.' }
        format.json { render :show, status: :ok, location: @aeronafe }
      else
        format.html { render :edit }
        format.json { render json: @aeronafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aeronaves/1
  # DELETE /aeronaves/1.json
  def destroy
    @aeronafe.destroy
    respond_to do |format|
      format.html { redirect_to aeronaves_url, notice: 'Aeronave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aeronafe
      @aeronafe = Aeronave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aeronafe_params
      params.require(:aeronafe).permit(:nome, :numero_de_tripulantes, :tamanho, :numero, :chassi, :quantidade_de_horas_de_voo, :quantidade_de_motor)
    end
end
