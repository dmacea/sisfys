class Basico::PersonaJuridicasController < ApplicationController
  before_action :set_basico_persona_juridica, only: [:show, :edit, :update, :destroy]

  # GET /basico/persona_juridicas
  # GET /basico/persona_juridicas.json
  def index
    @basico_persona_juridicas = Basico::PersonaJuridica.search(params[:page], params[:search], params[:sort])
  end

  # GET /basico/persona_juridicas/1
  # GET /basico/persona_juridicas/1.json
  def show
  end

  # GET /basico/persona_juridicas/new
  def new
    @basico_persona_juridica = Basico::PersonaJuridica.new
  end

  # GET /basico/persona_juridicas/1/edit
  def edit
  end

  # POST /basico/persona_juridicas
  # POST /basico/persona_juridicas.json
  def create
    @basico_persona_juridica = Basico::PersonaJuridica.new(basico_persona_juridica_params)

    respond_to do |format|
      if @basico_persona_juridica.save
        format.html { redirect_to @basico_persona_juridica, notice: 'Persona juridica was successfully created.' }
        format.json { render :show, status: :created, location: @basico_persona_juridica }
      else
        format.html { render :new }
        format.json { render json: @basico_persona_juridica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/persona_juridicas/1
  # PATCH/PUT /basico/persona_juridicas/1.json
  def update
    respond_to do |format|
      if @basico_persona_juridica.update(basico_persona_juridica_params)
        format.html { redirect_to @basico_persona_juridica, notice: 'Persona juridica was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_persona_juridica }
      else
        format.html { render :edit }
        format.json { render json: @basico_persona_juridica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/persona_juridicas/1
  # DELETE /basico/persona_juridicas/1.json
  def destroy
    @basico_persona_juridica.destroy
    respond_to do |format|
      format.html { redirect_to basico_persona_juridicas_url, notice: 'Persona juridica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_persona_juridica
      @basico_persona_juridica = Basico::PersonaJuridica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_persona_juridica_params
      params.require(:basico_persona_juridica).permit(:descripcion, :tipo)
    end
end
