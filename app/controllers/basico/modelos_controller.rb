class Basico::ModelosController < ApplicationController
  before_action :set_basico_modelo, only: [:show, :edit, :update, :destroy]

  # GET /basico/modelos
  # GET /basico/modelos.json
  def index
    @modelos = Basico::Modelo.search(params[:page], params[:search], params[:sort])
 
  end

  # GET /basico/modelos/1
  # GET /basico/modelos/1.json
  def show
  end

  # GET /basico/modelos/new
  def new
    @basico_modelo = Basico::Modelo.new
  end

  # GET /basico/modelos/1/edit
  def edit
  end

  # POST /basico/modelos
  # POST /basico/modelos.json
  def create
    @basico_modelo = Basico::Modelo.new(basico_modelo_params)

    respond_to do |format|
      if @basico_modelo.save
        format.html { redirect_to @basico_modelo, notice: 'Modelo was successfully created.' }
        format.json { render :show, status: :created, location: @basico_modelo }
      else
        format.html { render :new }
        format.json { render json: @basico_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/modelos/1
  # PATCH/PUT /basico/modelos/1.json
  def update
    respond_to do |format|
      if @basico_modelo.update(basico_modelo_params)
        format.html { redirect_to @basico_modelo, notice: 'Modelo was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_modelo }
      else
        format.html { render :edit }
        format.json { render json: @basico_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/modelos/1
  # DELETE /basico/modelos/1.json
  def destroy
    @basico_modelo.destroy
    respond_to do |format|
      format.html { redirect_to basico_modelos_url, notice: 'Modelo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_modelo
      @basico_modelo = Basico::Modelo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_modelo_params
      params.require(:basico_modelo).permit(:nombre, :marca_id)
    end
end
