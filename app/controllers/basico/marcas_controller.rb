class Basico::MarcasController < ApplicationController
  before_action :set_basico_marca, only: [:show, :edit, :update, :destroy]

  # GET /basico/marcas
  # GET /basico/marcas.json
  def index
    @marcas = Basico::Marca.search(params[:page], params[:search], params[:sort])
  end

  # GET /basico/marcas/1
  # GET /basico/marcas/1.json
  def show
  end

  # GET /basico/marcas/new
  def new
    @basico_marca = Basico::Marca.new
  end

  # GET /basico/marcas/1/edit
  def edit
  end

  # POST /basico/marcas
  # POST /basico/marcas.json
  def create
    @basico_marca = Basico::Marca.new(basico_marca_params)

    respond_to do |format|
      if @basico_marca.save
        format.html { redirect_to @basico_marca, notice: 'Marca was successfully created.' }
        format.json { render :show, status: :created, location: @basico_marca }
      else
        format.html { render :new }
        format.json { render json: @basico_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/marcas/1
  # PATCH/PUT /basico/marcas/1.json
  def update
    respond_to do |format|
      if @basico_marca.update(basico_marca_params)
        format.html { redirect_to @basico_marca, notice: 'Marca was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_marca }
      else
        format.html { render :edit }
        format.json { render json: @basico_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/marcas/1
  # DELETE /basico/marcas/1.json
  def destroy
    @basico_marca.destroy
    respond_to do |format|
      format.html { redirect_to basico_marcas_url, notice: 'Marca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_marca
      @basico_marca = Basico::Marca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_marca_params
      params.require(:basico_marca).permit(:nombre)
    end
end
