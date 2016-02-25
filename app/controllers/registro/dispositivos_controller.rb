class Registro::DispositivosController < ApplicationController
  before_action :set_registro_dispositivo, only: [:show, :edit, :update, :destroy]

  # GET /registro/dispositivos
  # GET /registro/dispositivos.json
  def index
    @registro_dispositivos = Registro::Dispositivo.all
  end

  # GET /registro/dispositivos/1
  # GET /registro/dispositivos/1.json
  def show
  end

  # GET /registro/dispositivos/new
  def new
    @registro_dispositivo = Registro::Dispositivo.new
  end

  # GET /registro/dispositivos/1/edit
  def edit
  end

  # POST /registro/dispositivos
  # POST /registro/dispositivos.json
  def create
    @registro_dispositivo = Registro::Dispositivo.new(registro_dispositivo_params)

    respond_to do |format|
      if @registro_dispositivo.save
        format.html { redirect_to @registro_dispositivo, notice: 'Dispositivo was successfully created.' }
        format.json { render :show, status: :created, location: @registro_dispositivo }
      else
        format.html { render :new }
        format.json { render json: @registro_dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro/dispositivos/1
  # PATCH/PUT /registro/dispositivos/1.json
  def update
    respond_to do |format|
      if @registro_dispositivo.update(registro_dispositivo_params)
        format.html { redirect_to @registro_dispositivo, notice: 'Dispositivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_dispositivo }
      else
        format.html { render :edit }
        format.json { render json: @registro_dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro/dispositivos/1
  # DELETE /registro/dispositivos/1.json
  def destroy
    @registro_dispositivo.destroy
    respond_to do |format|
      format.html { redirect_to registro_dispositivos_url, notice: 'Dispositivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_dispositivo
      @registro_dispositivo = Registro::Dispositivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_dispositivo_params
      params.require(:registro_dispositivo).permit(:tipo, :modelo_id, :serial, :email, :linea_id)
    end
end
