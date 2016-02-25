class Registro::LineasController < ApplicationController
  before_action :set_registro_linea, only: [:show, :edit, :update, :destroy]

  # GET /registro/lineas
  # GET /registro/lineas.json
  def index
    @registro_lineas = Registro::Linea.search(params[:page], params[:search], params[:sort])

  end

  # GET /registro/lineas/1
  # GET /registro/lineas/1.json
  def show
  end

  # GET /registro/lineas/new
  def new
    @registro_linea = Registro::Linea.new
  end

  # GET /registro/lineas/1/edit
  def edit
  end

  # POST /registro/lineas
  # POST /registro/lineas.json
  def create
    @registro_linea = Registro::Linea.new(registro_linea_params)

    respond_to do |format|
      if @registro_linea.save
        format.html { redirect_to @registro_linea, notice: 'Linea was successfully created.' }
        format.json { render :show, status: :created, location: @registro_linea }
      else
        format.html { render :new }
        format.json { render json: @registro_linea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro/lineas/1
  # PATCH/PUT /registro/lineas/1.json
  def update
    respond_to do |format|
      if @registro_linea.update(registro_linea_params)
        format.html { redirect_to @registro_linea, notice: 'Linea was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_linea }
      else
        format.html { render :edit }
        format.json { render json: @registro_linea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro/lineas/1
  # DELETE /registro/lineas/1.json
  def destroy
    @registro_linea.destroy
    respond_to do |format|
      format.html { redirect_to registro_lineas_url, notice: 'Linea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_linea
      @registro_linea = Registro::Linea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_linea_params
      params.require(:registro_linea).permit(:operadora_id, :serial, :codigoPin, :codigoPunk, :numero, :plan_id, :diaCorte)
    end
end
