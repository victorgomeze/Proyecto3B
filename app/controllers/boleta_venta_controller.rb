class BoletaVentaController < ApplicationController
  before_action :set_boleta_ventum, only: [:show, :edit, :update, :destroy]

  # GET /boleta_venta
  # GET /boleta_venta.json
  def index
    @boleta_venta = BoletaVenta.all
  end

  # GET /boleta_venta/1
  # GET /boleta_venta/1.json
  def show
  end

  # GET /boleta_venta/new
  def new
    @boleta_ventum = BoletaVenta.new
  end

  # GET /boleta_venta/1/edit
  def edit
  end

  # POST /boleta_venta
  # POST /boleta_venta.json
  def create
    @boleta_ventum = BoletaVenta.new(boleta_ventum_params)

    respond_to do |format|
      if @boleta_ventum.save
        format.html { redirect_to @boleta_ventum, notice: 'Boleta venta was successfully created.' }
        format.json { render :show, status: :created, location: @boleta_ventum }
      else
        format.html { render :new }
        format.json { render json: @boleta_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boleta_venta/1
  # PATCH/PUT /boleta_venta/1.json
  def update
    respond_to do |format|
      if @boleta_ventum.update(boleta_ventum_params)
        format.html { redirect_to @boleta_ventum, notice: 'Boleta venta was successfully updated.' }
        format.json { render :show, status: :ok, location: @boleta_ventum }
      else
        format.html { render :edit }
        format.json { render json: @boleta_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boleta_venta/1
  # DELETE /boleta_venta/1.json
  def destroy
    @boleta_ventum.destroy
    respond_to do |format|
      format.html { redirect_to boleta_venta_index_url, notice: 'Boleta venta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boleta_ventum
      @boleta_ventum = BoletaVenta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boleta_ventum_params
      params.require(:boleta_ventum).permit(:fecha, :monto, :tipo_pago, :cantidad)
    end
end
