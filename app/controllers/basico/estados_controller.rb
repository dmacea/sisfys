class Basico::EstadosController < ApplicationController
  before_action :set_basico_estado, only: [:show, :edit, :update, :destroy]

  # GET /basico/estados
  # GET /basico/estados.json
  def index
    @estados = Basico::Estado.search(params[:page], params[:search], params[:sort])

  end

  # GET /basico/estados/1
  # GET /basico/estados/1.json
  def show
  end

  # GET /basico/estados/new
  def new
    @basico_estado = Basico::Estado.new
  end

  # GET /basico/estados/1/edit
  def edit
  end

  # POST /basico/estados
  # POST /basico/estados.json
  def create
    @basico_estado = Basico::Estado.new(basico_estado_params)

    respond_to do |format|
      if @basico_estado.save
        format.html { redirect_to @basico_estado, notice: 'Estado was successfully created.' }
        format.json { render :show, status: :created, location: @basico_estado }
      else
        format.html { render :new }
        format.json { render json: @basico_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/estados/1
  # PATCH/PUT /basico/estados/1.json
  def update
    respond_to do |format|
      if @basico_estado.update(basico_estado_params)
        format.html { redirect_to @basico_estado, notice: 'Estado was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_estado }
      else
        format.html { render :edit }
        format.json { render json: @basico_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/estados/1
  # DELETE /basico/estados/1.json
  def destroy
    @basico_estado.destroy
    respond_to do |format|
      format.html { redirect_to basico_estados_url, notice: 'Estado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_estado
      @basico_estado = Basico::Estado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_estado_params
      params.require(:basico_estado).permit(:nombre, :codigo, :pais_id)
    end
end
