class Basico::PaisesController < ApplicationController
  before_action :set_basico_pais, only: [:show, :edit, :update, :destroy]

  # GET /basico/paises
  # GET /basico/paises.json
  def index
    @basico_paises = Basico::Pais.search(params[:page], params[:search], params[:sort])
  end

  # GET /basico/paises/1
  # GET /basico/paises/1.json
  def show
  end

  # GET /basico/paises/new
  def new
    @basico_pais = Basico::Pais.new
  end

  # GET /basico/paises/1/edit
  def edit
  end

  # POST /basico/paises
  # POST /basico/paises.json
  def create
    @basico_pais = Basico::Pais.new(basico_pais_params)
    respond_to do |format|
      if @basico_pais.save
        format.html { redirect_to @basico_pais, notice: 'Pais was successfully created.' }
        format.json { render :show, status: :created, location: @basico_pais }
      else
        format.html { render :new }
        format.json { render json: @basico_pais.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/paises/1
  # PATCH/PUT /basico/paises/1.json
  def update
    respond_to do |format|
      if @basico_pais.update(basico_pais_params)
        format.html { redirect_to @basico_pais, notice: 'Pais was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_pais }
      else
        format.html { render :edit }
        format.json { render json: @basico_pais.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/paises/1
  # DELETE /basico/paises/1.json
  def destroy
    @basico_pais.destroy
    mensaje = "Pais was successfully destroyed."
    mensaje = @basico_pais.errors.full_messages.join(", ") if @basico_pais.errors.size != 0  
    respond_to do |format|
      format.html { redirect_to basico_paises_url, notice: mensaje }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_pais
      @basico_pais = Basico::Pais.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_pais_params
      params.require(:basico_pais).permit(:nombre, :codigo)
    end
end
