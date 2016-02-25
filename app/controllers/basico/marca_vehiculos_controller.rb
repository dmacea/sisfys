class Basico::MarcaVehiculosController < ApplicationController
  before_action :set_basico_marca_vehiculo, only: [:show, :edit, :update, :destroy]

  # GET /basico/marca_vehiculos
  # GET /basico/marca_vehiculos.json
  def index
    @basico_marca_vehiculos = Basico::MarcaVehiculo.search(params[:page], params[:search], params[:sort])
  end

  # GET /basico/marca_vehiculos/1
  # GET /basico/marca_vehiculos/1.json
  def show
  end

  # GET /basico/marca_vehiculos/new
  def new
    @basico_marca_vehiculo = Basico::MarcaVehiculo.new
  end

  # GET /basico/marca_vehiculos/1/edit
  def edit
  end

  # POST /basico/marca_vehiculos
  # POST /basico/marca_vehiculos.json
  def create
    @basico_marca_vehiculo = Basico::MarcaVehiculo.new(basico_marca_vehiculo_params)

    respond_to do |format|
      if @basico_marca_vehiculo.save
        format.html { redirect_to @basico_marca_vehiculo, notice: 'Marca vehiculo was successfully created.' }
        format.json { render :show, status: :created, location: @basico_marca_vehiculo }
      else
        format.html { render :new }
        format.json { render json: @basico_marca_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/marca_vehiculos/1
  # PATCH/PUT /basico/marca_vehiculos/1.json
  def update
    respond_to do |format|
      if @basico_marca_vehiculo.update(basico_marca_vehiculo_params)
        format.html { redirect_to @basico_marca_vehiculo, notice: 'Marca vehiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_marca_vehiculo }
      else
        format.html { render :edit }
        format.json { render json: @basico_marca_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/marca_vehiculos/1
  # DELETE /basico/marca_vehiculos/1.json
  def destroy
    @basico_marca_vehiculo.destroy
    respond_to do |format|
      format.html { redirect_to basico_marca_vehiculos_url, notice: 'Marca vehiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_marca_vehiculo
      @basico_marca_vehiculo = Basico::MarcaVehiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_marca_vehiculo_params
      params.require(:basico_marca_vehiculo).permit(:nombre)
    end
end
