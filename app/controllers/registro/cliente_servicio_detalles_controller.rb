class Registro::ClienteServicioDetallesController < ApplicationController
  before_action :set_registro_cliente_servicio_detalle, only: [:show, :edit, :update, :destroy]

  # GET /registro/cliente_servicio_detalles
  # GET /registro/cliente_servicio_detalles.json
  def index
    @registro_cliente_servicio_detalles = Registro::ClienteServicioDetalle.all
  end

  # GET /registro/cliente_servicio_detalles/1
  # GET /registro/cliente_servicio_detalles/1.json
  def show
  end

  # GET /registro/cliente_servicio_detalles/new
  def new
    @registro_cliente_servicio_detalle = Registro::ClienteServicioDetalle.new
  end

  # GET /registro/cliente_servicio_detalles/1/edit
  def edit
  end

  # POST /registro/cliente_servicio_detalles
  # POST /registro/cliente_servicio_detalles.json
  def create
    @registro_cliente_servicio_detalle = Registro::ClienteServicioDetalle.new(registro_cliente_servicio_detalle_params)

    respond_to do |format|
      if @registro_cliente_servicio_detalle.save
        format.html { redirect_to @registro_cliente_servicio_detalle, notice: 'Cliente servicio detalle was successfully created.' }
        format.json { render :show, status: :created, location: @registro_cliente_servicio_detalle }
      else
        format.html { render :new }
        format.json { render json: @registro_cliente_servicio_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro/cliente_servicio_detalles/1
  # PATCH/PUT /registro/cliente_servicio_detalles/1.json
  def update
    respond_to do |format|
      if @registro_cliente_servicio_detalle.update(registro_cliente_servicio_detalle_params)
        format.html { redirect_to @registro_cliente_servicio_detalle, notice: 'Cliente servicio detalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_cliente_servicio_detalle }
      else
        format.html { render :edit }
        format.json { render json: @registro_cliente_servicio_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro/cliente_servicio_detalles/1
  # DELETE /registro/cliente_servicio_detalles/1.json
  def destroy
    @registro_cliente_servicio_detalle.destroy
    respond_to do |format|
      format.html { redirect_to registro_cliente_servicio_detalles_url, notice: 'Cliente servicio detalle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_cliente_servicio_detalle
      @registro_cliente_servicio_detalle = Registro::ClienteServicioDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_cliente_servicio_detalle_params
      params.require(:registro_cliente_servicio_detalle).permit(:servicio_id, :fecha, :estado)
    end
end
