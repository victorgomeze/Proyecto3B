class VentaTicketsController < ApplicationController
  before_action :set_venta_ticket, only: [:show, :edit, :update, :destroy]

  # GET /venta_tickets
  # GET /venta_tickets.json
  def index
    @venta_tickets = VentaTicket.all
  end

  # GET /venta_tickets/1
  # GET /venta_tickets/1.json
  def show
  end

  # GET /venta_tickets/new
  def new
    @venta_ticket = VentaTicket.new
  end

  # GET /venta_tickets/1/edit
  def edit
  end

  # POST /venta_tickets
  # POST /venta_tickets.json
  def create
    @venta_ticket = VentaTicket.new(venta_ticket_params)

    respond_to do |format|
      if @venta_ticket.save
        format.html { redirect_to @venta_ticket, notice: 'Venta ticket was successfully created.' }
        format.json { render :show, status: :created, location: @venta_ticket }
      else
        format.html { render :new }
        format.json { render json: @venta_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venta_tickets/1
  # PATCH/PUT /venta_tickets/1.json
  def update
    respond_to do |format|
      if @venta_ticket.update(venta_ticket_params)
        format.html { redirect_to @venta_ticket, notice: 'Venta ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @venta_ticket }
      else
        format.html { render :edit }
        format.json { render json: @venta_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venta_tickets/1
  # DELETE /venta_tickets/1.json
  def destroy
    @venta_ticket.destroy
    respond_to do |format|
      format.html { redirect_to venta_tickets_url, notice: 'Venta ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venta_ticket
      @venta_ticket = VentaTicket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venta_ticket_params
      params.require(:venta_ticket).permit(:fecha, :monto, :tipo_pago, :cantidad)
    end
end
