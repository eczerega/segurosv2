class ProductoTecnologiaController < ApplicationController
  before_action :set_producto_tecnologium, only: [:show, :edit, :update, :destroy]

  # GET /producto_tecnologia
  # GET /producto_tecnologia.json
  def index
    @producto_tecnologia = ProductoTecnologium.all
  end

  # GET /producto_tecnologia/1
  # GET /producto_tecnologia/1.json
  def show
  end

  # GET /producto_tecnologia/new
  def new
    @producto_tecnologium = ProductoTecnologium.new
  end

  # GET /producto_tecnologia/1/edit
  def edit
  end

  # POST /producto_tecnologia
  # POST /producto_tecnologia.json
  def create
    @producto_tecnologium = ProductoTecnologium.new(producto_tecnologium_params)

    respond_to do |format|
      if @producto_tecnologium.save
        format.html { redirect_to @producto_tecnologium, notice: 'Producto tecnologium was successfully created.' }
        format.json { render :show, status: :created, location: @producto_tecnologium }
      else
        format.html { render :new }
        format.json { render json: @producto_tecnologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_tecnologia/1
  # PATCH/PUT /producto_tecnologia/1.json
  def update
    respond_to do |format|
      if @producto_tecnologium.update(producto_tecnologium_params)
        format.html { redirect_to @producto_tecnologium, notice: 'Producto tecnologium was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_tecnologium }
      else
        format.html { render :edit }
        format.json { render json: @producto_tecnologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_tecnologia/1
  # DELETE /producto_tecnologia/1.json
  def destroy
    @producto_tecnologium.destroy
    respond_to do |format|
      format.html { redirect_to producto_tecnologia_url, notice: 'Producto tecnologium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_tecnologium
      @producto_tecnologium = ProductoTecnologium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_tecnologium_params
      params.require(:producto_tecnologium).permit(:producto, :tipo_producto, :marca, :anho, :fecha_inicio, :fecha_termino, :nombre_comprador, :apellido_comprador, :rut_comprador, :digito_verifiador_comprador, :email_comprador, :numero_comprador, :nombre_asegurado, :apellido_asegurado, :rut_asegurado, :digito_verificador_asegurado, :email_asegurado, :numero_asegurado)
    end
end
