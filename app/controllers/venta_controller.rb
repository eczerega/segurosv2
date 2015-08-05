class VentaController < ApplicationController
  before_action :set_ventum, only: [:show, :edit, :update, :destroy]


  # GET /venta
  # GET /venta.json
  def index
    @venta = Ventum.all
  end

  # GET /venta/1
  # GET /venta/1.json
  def show
  end

  # GET /venta/new
  def new
    @ventum = Ventum.new
  end

  # GET /venta/1/edit
  def edit
  end

  # POST /venta
  # POST /venta.json
  def create
    @ventum = Ventum.new(ventum_params)

    respond_to do |format|
      if @ventum.save
        format.html { redirect_to @ventum, notice: 'Ventum was successfully created.' }
        format.json { render :show, status: :created, location: @ventum }
      else
        format.html { render :new }
        format.json { render json: @ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  def activador
    @token = params[:token]
    @id2 = params[:id2]
    @validador = -1
    if @id2.to_i == 0
      @validador = 0
      render :layout => false
    else
      @venta = Ventum.find(@id2.to_i)
      @producto = nil
      if @venta.tipo_producto == '1'
        @producto = ProductoPersona.find(@venta.pid)
      elsif @venta.tipo_producto == '2'
        @producto = ProductoInmueble.find(@venta.pid)
      elsif @venta.tipo_producto == '3'
        @producto = ProductoTecnologium.find(@venta.pid)
      elsif @venta.tipo_producto == '4'
        @producto = ProductoVehiculo.find(@venta.pid)
      end
      @mailasegurado = @producto.email_asegurado.to_s

      if !@venta.nil? && @venta.aux1 == '0'
        @venta.aux1 = '1'
        @venta.save
        @validador= 1

        @pdf=WickedPdf.new.pdf_from_string('test')
        save_path = Rails.root.join('pdfs','poliza'+@venta.id.to_s+'.pdf')
        File.open(save_path, 'wb') do |file|
          file << @pdf
        end
        ActionMail.enviar_poliza(@mailasegurado, @venta.id.to_s).deliver
        render :layout => false
      elsif !@venta.nil? && @venta.aux1 == '1'
        @validador = 2
        ActionMail.enviar_poliza(@mailasegurado, @venta.id.to_s).deliver
        render :layout => false
      else
        @validador = 3
        render :layout => false
      end
    end
  end



  # PATCH/PUT /venta/1
  # PATCH/PUT /venta/1.json
  def update
    respond_to do |format|
      if @ventum.update(ventum_params)
        format.html { redirect_to @ventum, notice: 'Ventum was successfully updated.' }
        format.json { render :show, status: :ok, location: @ventum }
      else
        format.html { render :edit }
        format.json { render json: @ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venta/1
  # DELETE /venta/1.json
  def destroy
    @ventum.destroy
    respond_to do |format|
      format.html { redirect_to venta_url, notice: 'Ventum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ventum
      @ventum = Ventum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ventum_params
      params.require(:ventum).permit(:tipo_producto, :monto, :vendedor_id, :punto_de_venta_id, :aux1, :aux2, :aux3)
    end
end
