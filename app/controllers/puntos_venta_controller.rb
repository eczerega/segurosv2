class PuntosVentaController < ApplicationController
  before_action :set_puntos_ventum, only: [:show, :edit, :update, :destroy]

  # GET /puntos_venta
  # GET /puntos_venta.json
  def index
    @puntos_venta = PuntosVentum.all
  end

  # GET /puntos_venta/1
  # GET /puntos_venta/1.json
  def show
  end

  # GET /puntos_venta/new
  def new
    @puntos_ventum = PuntosVentum.new
  end

  # GET /puntos_venta/1/edit
  def edit
  end

  # POST /puntos_venta
  # POST /puntos_venta.json
  def create
    @puntos_ventum = PuntosVentum.new(puntos_ventum_params)

    respond_to do |format|
      if @puntos_ventum.save
        format.html { redirect_to @puntos_ventum, notice: 'Puntos ventum was successfully created.' }
        format.json { render :show, status: :created, location: @puntos_ventum }
      else
        format.html { render :new }
        format.json { render json: @puntos_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puntos_venta/1
  # PATCH/PUT /puntos_venta/1.json
  def update
    respond_to do |format|
      if @puntos_ventum.update(puntos_ventum_params)
        format.html { redirect_to @puntos_ventum, notice: 'Puntos ventum was successfully updated.' }
        format.json { render :show, status: :ok, location: @puntos_ventum }
      else
        format.html { render :edit }
        format.json { render json: @puntos_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puntos_venta/1
  # DELETE /puntos_venta/1.json
  def destroy
    @puntos_ventum.destroy
    respond_to do |format|
      format.html { redirect_to puntos_venta_url, notice: 'Puntos ventum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puntos_ventum
      @puntos_ventum = PuntosVentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puntos_ventum_params
      params.require(:puntos_ventum).permit(:nombre, :ciudad, :comuna, :rut, :dv, :calle, :empresa_id, :aux1, :aux2, :aux3, :image)
    end
end
