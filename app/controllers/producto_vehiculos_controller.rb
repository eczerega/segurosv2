class ProductoVehiculosController < ApplicationController
  before_action :set_producto_vehiculo, only: [:show, :edit, :update, :destroy]

  # GET /producto_vehiculos
  # GET /producto_vehiculos.json
  def index
    @producto_vehiculos = ProductoVehiculo.all
  end

  # GET /producto_vehiculos/1
  # GET /producto_vehiculos/1.json
  def show
  end

  # GET /producto_vehiculos/new
  def new
    @producto_vehiculo = ProductoVehiculo.new
  end

  # GET /producto_vehiculos/1/edit
  def edit
  end

  # POST /producto_vehiculos
  # POST /producto_vehiculos.json
  def create
    @producto_vehiculo = ProductoVehiculo.new(producto_vehiculo_params)

    respond_to do |format|
      if @producto_vehiculo.save
        format.html { redirect_to @producto_vehiculo, notice: 'Producto vehiculo was successfully created.' }
        format.json { render :show, status: :created, location: @producto_vehiculo }
      else
        format.html { render :new }
        format.json { render json: @producto_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_vehiculos/1
  # PATCH/PUT /producto_vehiculos/1.json
  def update
    respond_to do |format|
      if @producto_vehiculo.update(producto_vehiculo_params)
        format.html { redirect_to @producto_vehiculo, notice: 'Producto vehiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_vehiculo }
      else
        format.html { render :edit }
        format.json { render json: @producto_vehiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_vehiculos/1
  # DELETE /producto_vehiculos/1.json
  def destroy
    @producto_vehiculo.destroy
    respond_to do |format|
      format.html { redirect_to producto_vehiculos_url, notice: 'Producto vehiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_vehiculo
      @producto_vehiculo = ProductoVehiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_vehiculo_params
      params.require(:producto_vehiculo).permit(:producto, :marca, :modelos, :anho, :motor, :patente, :fecha_inicio, :fecha_termino, :nombre_comprador, :apellido_comprador, :rut_comprador, :digito_verifiador_comprador, :email_comprador, :numero_comprador, :nombre_asegurado, :apellido_asegurado, :rut_asegurado, :digito_verificador_asegurado, :email_asegurado, :numero_asegurado)
    end
end
