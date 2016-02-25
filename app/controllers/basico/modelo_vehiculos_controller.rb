class Basico::ModeloVehiculosController < ApplicationController
  before_action :set_basico_modelo_vehiculo, only: [:show, :edit, :update, :destroy]

  # GET /basico/modelo_vehiculos
  # GET /basico/modelo_vehiculos.json
  def index
    @basico_modelo_vehiculos = Basico::ModeloVehiculo.search(params[:page], params[:search], params[:sort])

  end

  # GET /basico/modelo_vehiculos/1
  # GET /basico/modelo_vehiculos/1.json
  def show
  end

  # GET /basico/modelo_vehiculos/new
  def new
    @basico_modelo_vehiculo = Basico::ModeloVehiculo.new
  end

  # GET /basico/modelo_vehiculos/1/edit
  def edit
  end

  # POST /basico/modelo_vehiculos
  # POST /basico/modelo_vehiculos.json
  def create
    @basico_modelo_vehiculo = Basico::ModeloVehiculo.new(basico_modelo_vehiculo_params)
    puts "--------------->>>"
    puts @basico_modelo_vehiculo.marcaVehiculo
    puts @basico_modelo_vehiculo.marcaVehiculo_id
    respond_to do |format|
      if @basico_modelo_vehiculo.save
        format.html { redirect_to @basico_modelo_vehiculo, notice: 'Modelo vehiculo was successfully created.' }
        format.json { render :show, status: :created, location: @basico_modelo_vehiculo }
      else
        format.html { render :new }
        format.json { render json: @basico_modelo_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/modelo_vehiculos/1
  # PATCH/PUT /basico/modelo_vehiculos/1.json
  def update
    respond_to do |format|
      if @basico_modelo_vehiculo.update(basico_modelo_vehiculo_params)
        format.html { redirect_to @basico_modelo_vehiculo, notice: 'Modelo vehiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_modelo_vehiculo }
      else
        format.html { render :edit }
        format.json { render json: @basico_modelo_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/modelo_vehiculos/1
  # DELETE /basico/modelo_vehiculos/1.json
  def destroy
    @basico_modelo_vehiculo.destroy
    respond_to do |format|
      format.html { redirect_to basico_modelo_vehiculos_url, notice: 'Modelo vehiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_modelo_vehiculo
      @basico_modelo_vehiculo = Basico::ModeloVehiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_modelo_vehiculo_params
      params.require(:basico_modelo_vehiculo).permit(:nombre, :marcaVehiculo_id)
    end
end
