class Basico::TipoVehiculosController < ApplicationController
  before_action :set_basico_tipo_vehiculo, only: [:show, :edit, :update, :destroy]

  # GET /basico/tipo_vehiculos
  # GET /basico/tipo_vehiculos.json
  def index
    @basico_tipo_vehiculos = Basico::TipoVehiculo.search(params[:page], params[:search], params[:sort])
  end

  # GET /basico/tipo_vehiculos/1
  # GET /basico/tipo_vehiculos/1.json
  def show
  end

  # GET /basico/tipo_vehiculos/new
  def new
    @basico_tipo_vehiculo = Basico::TipoVehiculo.new
  end

  # GET /basico/tipo_vehiculos/1/edit
  def edit
  end

  # POST /basico/tipo_vehiculos
  # POST /basico/tipo_vehiculos.json
  def create
    @basico_tipo_vehiculo = Basico::TipoVehiculo.new(basico_tipo_vehiculo_params)

    respond_to do |format|
      if @basico_tipo_vehiculo.save
        format.html { redirect_to @basico_tipo_vehiculo, notice: 'Tipo vehiculo was successfully created.' }
        format.json { render :show, status: :created, location: @basico_tipo_vehiculo }
      else
        format.html { render :new }
        format.json { render json: @basico_tipo_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/tipo_vehiculos/1
  # PATCH/PUT /basico/tipo_vehiculos/1.json
  def update
    respond_to do |format|
      if @basico_tipo_vehiculo.update(basico_tipo_vehiculo_params)
        format.html { redirect_to @basico_tipo_vehiculo, notice: 'Tipo vehiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_tipo_vehiculo }
      else
        format.html { render :edit }
        format.json { render json: @basico_tipo_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/tipo_vehiculos/1
  # DELETE /basico/tipo_vehiculos/1.json
  def destroy
    @basico_tipo_vehiculo.destroy
    respond_to do |format|
      format.html { redirect_to basico_tipo_vehiculos_url, notice: 'Tipo vehiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_tipo_vehiculo
      @basico_tipo_vehiculo = Basico::TipoVehiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_tipo_vehiculo_params
      params.require(:basico_tipo_vehiculo).permit(:nombre)
    end
end
