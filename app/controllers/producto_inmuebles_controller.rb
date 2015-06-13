class ProductoInmueblesController < ApplicationController
  before_action :set_producto_inmueble, only: [:show, :edit, :update, :destroy]

  # GET /producto_inmuebles
  # GET /producto_inmuebles.json
  def index
    @producto_inmuebles = ProductoInmueble.all
  end

  # GET /producto_inmuebles/1
  # GET /producto_inmuebles/1.json
  def show
  end

  # GET /producto_inmuebles/new
  def new
    @producto_inmueble = ProductoInmueble.new
  end

  # GET /producto_inmuebles/1/edit
  def edit
  end

  # POST /producto_inmuebles
  # POST /producto_inmuebles.json
  def create
    @producto_inmueble = ProductoInmueble.new(producto_inmueble_params)

    respond_to do |format|
      if @producto_inmueble.save
        format.html { redirect_to @producto_inmueble, notice: 'Producto inmueble was successfully created.' }
        format.json { render :show, status: :created, location: @producto_inmueble }
      else
        format.html { render :new }
        format.json { render json: @producto_inmueble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_inmuebles/1
  # PATCH/PUT /producto_inmuebles/1.json
  def update
    respond_to do |format|
      if @producto_inmueble.update(producto_inmueble_params)
        format.html { redirect_to @producto_inmueble, notice: 'Producto inmueble was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_inmueble }
      else
        format.html { render :edit }
        format.json { render json: @producto_inmueble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_inmuebles/1
  # DELETE /producto_inmuebles/1.json
  def destroy
    @producto_inmueble.destroy
    respond_to do |format|
      format.html { redirect_to producto_inmuebles_url, notice: 'Producto inmueble was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_inmueble
      @producto_inmueble = ProductoInmueble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_inmueble_params
      params.require(:producto_inmueble).permit(:producto, :tipo_vivienda, :construccion, :region, :ciudad, :comuna, :calle, :numero, :fecha_inicio, :fecha_termino, :nombre_comprador, :apellido_comprador, :rut_comprador, :digito_verificador_comprador, :email_comprador, :numero_comprador, :nombre_asegurado, :apellido_asegurado, :rut_asegurado, :digito_verificador_asegurado, :email_asegurado, :numero_asegurado)
    end
end
