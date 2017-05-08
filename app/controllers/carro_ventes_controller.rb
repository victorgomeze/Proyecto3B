class CarroVentesController < ApplicationController
  before_action :set_carro_vente, only: [:show, :edit, :update, :destroy]

  # GET /carro_ventes
  # GET /carro_ventes.json
  def index
    @carro_ventes = CarroVente.all
  end

  # GET /carro_ventes/1
  # GET /carro_ventes/1.json
  def show
  end

  # GET /carro_ventes/new
  def new
    @carro_vente = CarroVente.new
  end

  # GET /carro_ventes/1/edit
  def edit
  end

  # POST /carro_ventes
  # POST /carro_ventes.json
  def create
    @carro_vente = CarroVente.new(carro_vente_params)

    respond_to do |format|
      if @carro_vente.save
        format.html { redirect_to @carro_vente, notice: 'Carro vente was successfully created.' }
        format.json { render :show, status: :created, location: @carro_vente }
      else
        format.html { render :new }
        format.json { render json: @carro_vente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carro_ventes/1
  # PATCH/PUT /carro_ventes/1.json
  def update
    respond_to do |format|
      if @carro_vente.update(carro_vente_params)
        format.html { redirect_to @carro_vente, notice: 'Carro vente was successfully updated.' }
        format.json { render :show, status: :ok, location: @carro_vente }
      else
        format.html { render :edit }
        format.json { render json: @carro_vente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carro_ventes/1
  # DELETE /carro_ventes/1.json
  def destroy
    @carro_vente.destroy
    respond_to do |format|
      format.html { redirect_to carro_ventes_url, notice: 'Carro vente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carro_vente
      @carro_vente = CarroVente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carro_vente_params
      params.require(:carro_vente).permit(:cantidad_prod)
    end
end
