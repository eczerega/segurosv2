class CompaniaSegurosController < ApplicationController
  before_action :set_compania_seguro, only: [:show, :edit, :update, :destroy]

  # GET /compania_seguros
  # GET /compania_seguros.json
  def index
    @compania_seguros = CompaniaSeguro.all
  end

  # GET /compania_seguros/1
  # GET /compania_seguros/1.json
  def show
  end

  # GET /compania_seguros/new
  def new
    @compania_seguro = CompaniaSeguro.new
  end

  # GET /compania_seguros/1/edit
  def edit
  end

  # POST /compania_seguros
  # POST /compania_seguros.json
  def create
    @compania_seguro = CompaniaSeguro.new(compania_seguro_params)

    respond_to do |format|
      if @compania_seguro.save
        format.html { redirect_to @compania_seguro, notice: 'Compania seguro was successfully created.' }
        format.json { render :show, status: :created, location: @compania_seguro }
      else
        format.html { render :new }
        format.json { render json: @compania_seguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compania_seguros/1
  # PATCH/PUT /compania_seguros/1.json
  def update
    respond_to do |format|
      if @compania_seguro.update(compania_seguro_params)
        format.html { redirect_to @compania_seguro, notice: 'Compania seguro was successfully updated.' }
        format.json { render :show, status: :ok, location: @compania_seguro }
      else
        format.html { render :edit }
        format.json { render json: @compania_seguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compania_seguros/1
  # DELETE /compania_seguros/1.json
  def destroy
    @compania_seguro.destroy
    respond_to do |format|
      format.html { redirect_to compania_seguros_url, notice: 'Compania seguro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compania_seguro
      @compania_seguro = CompaniaSeguro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compania_seguro_params
      params.require(:compania_seguro).permit(:nombre, :rut, :dv, :banco, :cuenta_bancaria, :aux1, :aux2, :aux3, :image)
    end
end
