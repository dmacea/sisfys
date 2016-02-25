class Registro::ClienteServiciosController < ApplicationController
  before_action :set_registro_cliente_servicio, only: [:show, :edit, :update, :destroy]

  # GET /registro/cliente_servicios
  # GET /registro/cliente_servicios.json
  def index
    @registro_cliente_servicios = Registro::ClienteServicio.all
  end

  # GET /registro/cliente_servicios/1
  # GET /registro/cliente_servicios/1.json
  def show
  end

  # GET /registro/cliente_servicios/new
  def new
    @registro_cliente_servicio = Registro::ClienteServicio.new
  end

  # GET /registro/cliente_servicios/1/edit
  def edit
  end

  # POST /registro/cliente_servicios
  # POST /registro/cliente_servicios.json
  def create
    @registro_cliente_servicio = Registro::ClienteServicio.new(registro_cliente_servicio_params)

    respond_to do |format|
      if @registro_cliente_servicio.save
        format.html { redirect_to @registro_cliente_servicio, notice: 'Cliente servicio was successfully created.' }
        format.json { render :show, status: :created, location: @registro_cliente_servicio }
      else
        format.html { render :new }
        format.json { render json: @registro_cliente_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro/cliente_servicios/1
  # PATCH/PUT /registro/cliente_servicios/1.json
  def update
    respond_to do |format|
      if @registro_cliente_servicio.update(registro_cliente_servicio_params)
        format.html { redirect_to @registro_cliente_servicio, notice: 'Cliente servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_cliente_servicio }
      else
        format.html { render :edit }
        format.json { render json: @registro_cliente_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro/cliente_servicios/1
  # DELETE /registro/cliente_servicios/1.json
  def destroy
    @registro_cliente_servicio.destroy
    respond_to do |format|
      format.html { redirect_to registro_cliente_servicios_url, notice: 'Cliente servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_cliente_servicio
      @registro_cliente_servicio = Registro::ClienteServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_cliente_servicio_params
      params.require(:registro_cliente_servicio).permit(:cliente_id, :servicio_id, :dispositivo_id, :pagaPlan, :fechaInicio_id, :estado)
    end
end
