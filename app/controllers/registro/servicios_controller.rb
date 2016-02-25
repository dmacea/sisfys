class Registro::ServiciosController < ApplicationController
  before_action :set_registro_servicio, only: [:show, :edit, :update, :destroy]

  # GET /registro/servicios
  # GET /registro/servicios.json
  def index
    @registro_servicios = Registro::Servicio.all
  end

  # GET /registro/servicios/1
  # GET /registro/servicios/1.json
  def show
  end

  # GET /registro/servicios/new
  def new
    @registro_servicio = Registro::Servicio.new
  end

  # GET /registro/servicios/1/edit
  def edit
  end

  # POST /registro/servicios
  # POST /registro/servicios.json
  def create
    @registro_servicio = Registro::Servicio.new(registro_servicio_params)

    respond_to do |format|
      if @registro_servicio.save
        format.html { redirect_to @registro_servicio, notice: 'Servicio was successfully created.' }
        format.json { render :show, status: :created, location: @registro_servicio }
      else
        format.html { render :new }
        format.json { render json: @registro_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro/servicios/1
  # PATCH/PUT /registro/servicios/1.json
  def update
    respond_to do |format|
      if @registro_servicio.update(registro_servicio_params)
        format.html { redirect_to @registro_servicio, notice: 'Servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_servicio }
      else
        format.html { render :edit }
        format.json { render json: @registro_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro/servicios/1
  # DELETE /registro/servicios/1.json
  def destroy
    @registro_servicio.destroy
    respond_to do |format|
      format.html { redirect_to registro_servicios_url, notice: 'Servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_servicio
      @registro_servicio = Registro::Servicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_servicio_params
      params.require(:registro_servicio).permit(:nombre, :descripcion, :valor, :impuesto)
    end
end
