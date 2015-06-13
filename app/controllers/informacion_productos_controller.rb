class InformacionProductosController < ApplicationController
  before_action :set_informacion_producto, only: [:show, :edit, :update, :destroy]

  # GET /informacion_productos
  # GET /informacion_productos.json
  def index
    @informacion_productos = InformacionProducto.all
  end

  # GET /informacion_productos/1
  # GET /informacion_productos/1.json
  def show
  end

  # GET /informacion_productos/new
  def new
    @informacion_producto = InformacionProducto.new
  end

  # GET /informacion_productos/1/edit
  def edit
  end

  # POST /informacion_productos
  # POST /informacion_productos.json
  def create
    @informacion_producto = InformacionProducto.new(informacion_producto_params)

    respond_to do |format|
      if @informacion_producto.save
        format.html { redirect_to @informacion_producto, notice: 'Informacion producto was successfully created.' }
        format.json { render :show, status: :created, location: @informacion_producto }
      else
        format.html { render :new }
        format.json { render json: @informacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacion_productos/1
  # PATCH/PUT /informacion_productos/1.json
  def update
    respond_to do |format|
      if @informacion_producto.update(informacion_producto_params)
        format.html { redirect_to @informacion_producto, notice: 'Informacion producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @informacion_producto }
      else
        format.html { render :edit }
        format.json { render json: @informacion_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacion_productos/1
  # DELETE /informacion_productos/1.json
  def destroy
    @informacion_producto.destroy
    respond_to do |format|
      format.html { redirect_to informacion_productos_url, notice: 'Informacion producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informacion_producto
      @informacion_producto = InformacionProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informacion_producto_params
      params.require(:informacion_producto).permit(:nombre, :tipo, :prima, :valor_asegurado, :duracion_meses, :aseguradora_responsable_id, :aux1, :aux2, :aux3, :image)
    end
end
