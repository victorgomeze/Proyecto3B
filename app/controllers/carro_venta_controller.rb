class CarroVentaController < ApplicationController
  before_action :set_carro_ventum, only: [:show, :edit, :update, :destroy]

  # GET /carro_venta
  # GET /carro_venta.json
  def index
    @carro_venta = CarroVenta.all
  end

  # GET /carro_venta/1
  # GET /carro_venta/1.json
  def show
  end

  # GET /carro_venta/new
  def new
    @carro_ventum = CarroVenta.new
  end

  # GET /carro_venta/1/edit
  def edit
  end

  # POST /carro_venta
  # POST /carro_venta.json
  def create
    @carro_ventum = CarroVenta.new(carro_ventum_params)

    respond_to do |format|
      if @carro_ventum.save
        format.html { redirect_to @carro_ventum, notice: 'Carro venta was successfully created.' }
        format.json { render :show, status: :created, location: @carro_ventum }
      else
        format.html { render :new }
        format.json { render json: @carro_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carro_venta/1
  # PATCH/PUT /carro_venta/1.json
  def update
    respond_to do |format|
      if @carro_ventum.update(carro_ventum_params)
        format.html { redirect_to @carro_ventum, notice: 'Carro venta was successfully updated.' }
        format.json { render :show, status: :ok, location: @carro_ventum }
      else
        format.html { render :edit }
        format.json { render json: @carro_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carro_venta/1
  # DELETE /carro_venta/1.json
  def destroy
    @carro_ventum.destroy
    respond_to do |format|
      format.html { redirect_to carro_venta_index_url, notice: 'Carro venta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carro_ventum
      @carro_ventum = CarroVenta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carro_ventum_params
      params.require(:carro_ventum).permit(:cantidad)
    end
end
