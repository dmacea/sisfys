class Basico::MunicipiosController < ApplicationController
  before_action :set_basico_municipio, only: [:show, :edit, :update, :destroy]

  # GET /basico/municipios
  # GET /basico/municipios.json
  def index
    @basico_municipios = Basico::Municipio.all
  end

  # GET /basico/municipios/1
  # GET /basico/municipios/1.json
  def show
  end

  # GET /basico/municipios/new
  def new
    @basico_municipio = Basico::Municipio.new
  end

  # GET /basico/municipios/1/edit
  def edit
  end

  # POST /basico/municipios
  # POST /basico/municipios.json
  def create
    @basico_municipio = Basico::Municipio.new(basico_municipio_params)

    respond_to do |format|
      if @basico_municipio.save
        format.html { redirect_to @basico_municipio, notice: 'Municipio was successfully created.' }
        format.json { render :show, status: :created, location: @basico_municipio }
      else
        format.html { render :new }
        format.json { render json: @basico_municipio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/municipios/1
  # PATCH/PUT /basico/municipios/1.json
  def update
    respond_to do |format|
      if @basico_municipio.update(basico_municipio_params)
        format.html { redirect_to @basico_municipio, notice: 'Municipio was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_municipio }
      else
        format.html { render :edit }
        format.json { render json: @basico_municipio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/municipios/1
  # DELETE /basico/municipios/1.json
  def destroy
    @basico_municipio.destroy
    respond_to do |format|
      format.html { redirect_to basico_municipios_url, notice: 'Municipio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_municipio
      @basico_municipio = Basico::Municipio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_municipio_params
      params.require(:basico_municipio).permit(:nombre, :estado_id)
    end
end
