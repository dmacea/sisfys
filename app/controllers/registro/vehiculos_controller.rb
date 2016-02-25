class Registro::VehiculosController < ApplicationController
  before_action :set_registro_vehiculo, only: [:show, :edit, :update, :destroy]

  # GET /registro/vehiculos
  # GET /registro/vehiculos.json
  def index
    @registro_vehiculos = Registro::Vehiculo.all
  end

  # GET /registro/vehiculos/1
  # GET /registro/vehiculos/1.json
  def show
  end

  # GET /registro/vehiculos/new
  def new
    @registro_vehiculo = Registro::Vehiculo.new
  end

  # GET /registro/vehiculos/1/edit
  def edit
  end

  # POST /registro/vehiculos
  # POST /registro/vehiculos.json
  def create
    @registro_vehiculo = Registro::Vehiculo.new(registro_vehiculo_params)

    respond_to do |format|
      if @registro_vehiculo.save
        format.html { redirect_to @registro_vehiculo, notice: 'Vehiculo was successfully created.' }
        format.json { render :show, status: :created, location: @registro_vehiculo }
      else
        format.html { render :new }
        format.json { render json: @registro_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro/vehiculos/1
  # PATCH/PUT /registro/vehiculos/1.json
  def update
    respond_to do |format|
      if @registro_vehiculo.update(registro_vehiculo_params)
        format.html { redirect_to @registro_vehiculo, notice: 'Vehiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_vehiculo }
      else
        format.html { render :edit }
        format.json { render json: @registro_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro/vehiculos/1
  # DELETE /registro/vehiculos/1.json
  def destroy
    @registro_vehiculo.destroy
    respond_to do |format|
      format.html { redirect_to registro_vehiculos_url, notice: 'Vehiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_vehiculo
      @registro_vehiculo = Registro::Vehiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_vehiculo_params
      params.require(:registro_vehiculo).permit(:tipo_id, :modelo_id, :ano, :color, :placa, :serialCarroceria, :serialMotor, :cliente_id, :encargado, :dispositivo_id)
    end
end
