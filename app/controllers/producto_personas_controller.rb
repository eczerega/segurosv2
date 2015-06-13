class ProductoPersonasController < ApplicationController
  before_action :set_producto_persona, only: [:show, :edit, :update, :destroy]

  # GET /producto_personas
  # GET /producto_personas.json
  def index
    @producto_personas = ProductoPersona.all
  end

  # GET /producto_personas/1
  # GET /producto_personas/1.json
  def show
  end

  # GET /producto_personas/new
  def new
    @producto_persona = ProductoPersona.new
  end

  # GET /producto_personas/1/edit
  def edit
  end

  # POST /producto_personas
  # POST /producto_personas.json
  def create
    @producto_persona = ProductoPersona.new(producto_persona_params)

    respond_to do |format|
      if @producto_persona.save
        format.html { redirect_to @producto_persona, notice: 'Producto persona was successfully created.' }
        format.json { render :show, status: :created, location: @producto_persona }
      else
        format.html { render :new }
        format.json { render json: @producto_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_personas/1
  # PATCH/PUT /producto_personas/1.json
  def update
    respond_to do |format|
      if @producto_persona.update(producto_persona_params)
        format.html { redirect_to @producto_persona, notice: 'Producto persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_persona }
      else
        format.html { render :edit }
        format.json { render json: @producto_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_personas/1
  # DELETE /producto_personas/1.json
  def destroy
    @producto_persona.destroy
    respond_to do |format|
      format.html { redirect_to producto_personas_url, notice: 'Producto persona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_persona
      @producto_persona = ProductoPersona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_persona_params
      params.require(:producto_persona).permit(:producto, :nombre_comprador, :apellido_comprador, :rut_comprador, :digito_verifiador_comprador, :email_comprador, :numero_comprador, :nombre_asegurado, :apellido_asegurado, :rut_asegurado, :digito_verificador_asegurado, :email_asegurado, :numero_asegurado, :fecha_inicio, :fecha_termino)
    end
end
