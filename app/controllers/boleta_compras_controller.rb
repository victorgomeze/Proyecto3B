class BoletaComprasController < ApplicationController
  before_action :set_boleta_compra, only: [:show, :edit, :update, :destroy]

  # GET /boleta_compras
  # GET /boleta_compras.json
  def index
    @boleta_compras = BoletaCompra.all
  end

  # GET /boleta_compras/1
  # GET /boleta_compras/1.json
  def show
  end

  # GET /boleta_compras/new
  def new
    @boleta_compra = BoletaCompra.new
  end

  # GET /boleta_compras/1/edit
  def edit
  end

  # POST /boleta_compras
  # POST /boleta_compras.json
  def create
    @boleta_compra = BoletaCompra.new(boleta_compra_params)

    respond_to do |format|
      if @boleta_compra.save
        format.html { redirect_to @boleta_compra, notice: 'Boleta compra was successfully created.' }
        format.json { render :show, status: :created, location: @boleta_compra }
      else
        format.html { render :new }
        format.json { render json: @boleta_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boleta_compras/1
  # PATCH/PUT /boleta_compras/1.json
  def update
    respond_to do |format|
      if @boleta_compra.update(boleta_compra_params)
        format.html { redirect_to @boleta_compra, notice: 'Boleta compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @boleta_compra }
      else
        format.html { render :edit }
        format.json { render json: @boleta_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boleta_compras/1
  # DELETE /boleta_compras/1.json
  def destroy
    @boleta_compra.destroy
    respond_to do |format|
      format.html { redirect_to boleta_compras_url, notice: 'Boleta compra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boleta_compra
      @boleta_compra = BoletaCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boleta_compra_params
      params.require(:boleta_compra).permit(:fecha, :monto, :tipo_pago, :cantidad)
    end
end
