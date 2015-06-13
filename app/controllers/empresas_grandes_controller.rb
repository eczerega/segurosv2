class EmpresasGrandesController < ApplicationController
  before_action :set_empresas_grande, only: [:show, :edit, :update, :destroy]

  # GET /empresas_grandes
  # GET /empresas_grandes.json
  def index
    @empresas_grandes = EmpresasGrande.all
  end

  # GET /empresas_grandes/1
  # GET /empresas_grandes/1.json
  def show
  end

  # GET /empresas_grandes/new
  def new
    @empresas_grande = EmpresasGrande.new
  end

  # GET /empresas_grandes/1/edit
  def edit
  end

  # POST /empresas_grandes
  # POST /empresas_grandes.json
  def create
    @empresas_grande = EmpresasGrande.new(empresas_grande_params)

    respond_to do |format|
      if @empresas_grande.save
        format.html { redirect_to @empresas_grande, notice: 'Empresas grande was successfully created.' }
        format.json { render :show, status: :created, location: @empresas_grande }
      else
        format.html { render :new }
        format.json { render json: @empresas_grande.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresas_grandes/1
  # PATCH/PUT /empresas_grandes/1.json
  def update
    respond_to do |format|
      if @empresas_grande.update(empresas_grande_params)
        format.html { redirect_to @empresas_grande, notice: 'Empresas grande was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresas_grande }
      else
        format.html { render :edit }
        format.json { render json: @empresas_grande.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas_grandes/1
  # DELETE /empresas_grandes/1.json
  def destroy
    @empresas_grande.destroy
    respond_to do |format|
      format.html { redirect_to empresas_grandes_url, notice: 'Empresas grande was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresas_grande
      @empresas_grande = EmpresasGrande.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresas_grande_params
      params.require(:empresas_grande).permit(:nombre, :representante_legal_rut, :dv, :aux1, :aux2, :aux3, :image)
    end
end
