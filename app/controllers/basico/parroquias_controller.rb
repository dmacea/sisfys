class Basico::ParroquiasController < ApplicationController
  before_action :set_basico_parroquia, only: [:show, :edit, :update, :destroy]

  # GET /basico/parroquias
  # GET /basico/parroquias.json
  def index
    @parroquias = Basico::Parroquia.search(params[:page], params[:search], params[:sort])
  end

  # GET /basico/parroquias/1
  # GET /basico/parroquias/1.json
  def show
  end

  # GET /basico/parroquias/new
  def new
    @basico_parroquia = Basico::Parroquia.new
  end

  # GET /basico/parroquias/1/edit
  def edit
  end

  # POST /basico/parroquias
  # POST /basico/parroquias.json
  def create
    @basico_parroquia = Basico::Parroquia.new(basico_parroquia_params)

    respond_to do |format|
      if @basico_parroquia.save
        format.html { redirect_to @basico_parroquia, notice: 'Parroquia was successfully created.' }
        format.json { render :show, status: :created, location: @basico_parroquia }
      else
        format.html { render :new }
        format.json { render json: @basico_parroquia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/parroquias/1
  # PATCH/PUT /basico/parroquias/1.json
  def update
    respond_to do |format|
      if @basico_parroquia.update(basico_parroquia_params)
        format.html { redirect_to @basico_parroquia, notice: 'Parroquia was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_parroquia }
      else
        format.html { render :edit }
        format.json { render json: @basico_parroquia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/parroquias/1
  # DELETE /basico/parroquias/1.json
  def destroy
    @basico_parroquia.destroy
    respond_to do |format|
      format.html { redirect_to basico_parroquias_url, notice: 'Parroquia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_parroquia
      @basico_parroquia = Basico::Parroquia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_parroquia_params
      params.require(:basico_parroquia).permit(:nombre, :municipio_id)
    end
end
