class Basico::PlanesController < ApplicationController
  before_action :set_basico_plan, only: [:show, :edit, :update, :destroy]

  # GET /basico/planes
  # GET /basico/planes.json
  def index
    @basico_planes = Basico::Plan.all
  end

  # GET /basico/planes/1
  # GET /basico/planes/1.json
  def show
  end

  # GET /basico/planes/new
  def new
    @basico_plan = Basico::Plan.new
  end

  # GET /basico/planes/1/edit
  def edit
  end

  # POST /basico/planes
  # POST /basico/planes.json
  def create
    @basico_plan = Basico::Plan.new(basico_plan_params)

    respond_to do |format|
      if @basico_plan.save
        format.html { redirect_to @basico_plan, notice: 'Plan was successfully created.' }
        format.json { render :show, status: :created, location: @basico_plan }
      else
        format.html { render :new }
        format.json { render json: @basico_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basico/planes/1
  # PATCH/PUT /basico/planes/1.json
  def update
    respond_to do |format|
      if @basico_plan.update(basico_plan_params)
        format.html { redirect_to @basico_plan, notice: 'Plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @basico_plan }
      else
        format.html { render :edit }
        format.json { render json: @basico_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basico/planes/1
  # DELETE /basico/planes/1.json
  def destroy
    @basico_plan.destroy
    respond_to do |format|
      format.html { redirect_to basico_planes_url, notice: 'Plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basico_plan
      @basico_plan = Basico::Plan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basico_plan_params
      params.require(:basico_plan).permit(:nombre)
    end
end
