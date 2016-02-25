class Basico::OperadorasController < ApplicationController
  before_action :set_basico_operadora, only: [:show, :edit, :update, :destroy]

  # GET /basico/operadoras
  # GET /basico/operadoras.json
  def index
    @basico_operadoras = Basico::Operadora.search(params[:page], params[:search], params[:sort])

  end

  # GET /basico/operadoras/1
  # GET /basico/operadoras/1.json
  def show
  end

  # GET /basico/operadoras/new
  def new
    @basico_operadora = Basico::Operadora.new
  end

  # GET /basico/operadoras/1/edit
  def edit
  end

  # POST /basico/operadoras
  # POST /basico/operadoras.json
  def create
    @basico_operadora = Basico::Operadora.new(basico_operadora_params)

    respond_to do |format|
      if @basico_operadora.save
        format.html { redirect_to @basico_operadora, notice: 'Operadora was successfully created.' }
        format.json { render :show, status: :created, location: @basico_operadora }
      else
        format.html { render :new }
        format.json { render json: @basico_operadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/operadoras/1
  # PATCH/PUT /basico/operadoras/1.json
  def update
    respond_to do |format|
      if @basico_operadora.update(basico_operadora_params)
        format.html { redirect_to @basico_operadora, notice: 'Operadora was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_operadora }
      else
        format.html { render :edit }
        format.json { render json: @basico_operadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/operadoras/1
  # DELETE /basico/operadoras/1.json
  def destroy
    @basico_operadora.destroy
    respond_to do |format|
      format.html { redirect_to basico_operadoras_url, notice: 'Operadora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_operadora
      @basico_operadora = Basico::Operadora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_operadora_params
      params.require(:basico_operadora).permit(:nombre)
    end
end
