class Registro::ClientesController < ApplicationController
  before_action :set_registro_cliente, only: [:show, :edit, :update, :destroy]
 
  # GET /registro/clientes
  # GET /registro/clientes.json
  def index
    @clientes = Registro::Cliente.search(params[:page], params[:search], params[:sort])
  end

  # GET /registro/clientes/1
  # GET /registro/clientes/1.json
  def show
  end

  # GET /registro/clientes/new
  def new
    @cliente = Registro::Cliente.new
  end

  # GET /registro/clientes/1/edit
  def edit
  end

  # POST /registro/clientes
  # POST /registro/clientes.json
  def create
    @cliente = Registro::Cliente.new(registro_cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Cliente was successfully created.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro/clientes/1
  # PATCH/PUT /registro/clientes/1.json
  def update
    respond_to do |format|
      if @registro_cliente.update(registro_cliente_params)
        format.html { redirect_to @registro_cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_cliente }
      else
        format.html { render :edit }
        format.json { render json: @registro_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro/clientes/1
  # DELETE /registro/clientes/1.json
  def destroy
    @registro_cliente.destroy
    respond_to do |format|
      format.html { redirect_to registro_clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_cliente
      @registro_cliente = Registro::Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_cliente_params
      params.require(:cliente).permit(:tipoIdentidad_id, :identidad, :nombres, :direccion, :parroquia_id, :email, :ping, :web, :twitter)
    end
end
