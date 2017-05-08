class CarroComprasController < ApplicationController
  before_action :set_carro_compra, only: [:show, :edit, :update, :destroy]

  # GET /carro_compras
  # GET /carro_compras.json
  def index
    @carro_compras = CarroCompra.all
  end

  # GET /carro_compras/1
  # GET /carro_compras/1.json
  def show
  end

  # GET /carro_compras/new
  def new
    @carro_compra = CarroCompra.new
  end

  # GET /carro_compras/1/edit
  def edit
  end

  # POST /carro_compras
  # POST /carro_compras.json
  def create
    @carro_compra = CarroCompra.new(carro_compra_params)

    respond_to do |format|
      if @carro_compra.save
        format.html { redirect_to @carro_compra, notice: 'Carro compra was successfully created.' }
        format.json { render :show, status: :created, location: @carro_compra }
      else
        format.html { render :new }
        format.json { render json: @carro_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carro_compras/1
  # PATCH/PUT /carro_compras/1.json
  def update
    respond_to do |format|
      if @carro_compra.update(carro_compra_params)
        format.html { redirect_to @carro_compra, notice: 'Carro compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @carro_compra }
      else
        format.html { render :edit }
        format.json { render json: @carro_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carro_compras/1
  # DELETE /carro_compras/1.json
  def destroy
    @carro_compra.destroy
    respond_to do |format|
      format.html { redirect_to carro_compras_url, notice: 'Carro compra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carro_compra
      @carro_compra = CarroCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carro_compra_params
      params.require(:carro_compra).permit(:cantidad_prod)
    end
end
