require 'test_helper'

class VentaTicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venta_ticket = venta_tickets(:one)
  end

  test "should get index" do
    get venta_tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_venta_ticket_url
    assert_response :success
  end

  test "should create venta_ticket" do
    assert_difference('VentaTicket.count') do
      post venta_tickets_url, params: { venta_ticket: { cantidad: @venta_ticket.cantidad, fecha: @venta_ticket.fecha, monto: @venta_ticket.monto, tipo_pago: @venta_ticket.tipo_pago } }
    end

    assert_redirected_to venta_ticket_url(VentaTicket.last)
  end

  test "should show venta_ticket" do
    get venta_ticket_url(@venta_ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_venta_ticket_url(@venta_ticket)
    assert_response :success
  end

  test "should update venta_ticket" do
    patch venta_ticket_url(@venta_ticket), params: { venta_ticket: { cantidad: @venta_ticket.cantidad, fecha: @venta_ticket.fecha, monto: @venta_ticket.monto, tipo_pago: @venta_ticket.tipo_pago } }
    assert_redirected_to venta_ticket_url(@venta_ticket)
  end

  test "should destroy venta_ticket" do
    assert_difference('VentaTicket.count', -1) do
      delete venta_ticket_url(@venta_ticket)
    end

    assert_redirected_to venta_tickets_url
  end
end
