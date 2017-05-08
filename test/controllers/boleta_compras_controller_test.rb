require 'test_helper'

class BoletaComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boleta_compra = boleta_compras(:one)
  end

  test "should get index" do
    get boleta_compras_url
    assert_response :success
  end

  test "should get new" do
    get new_boleta_compra_url
    assert_response :success
  end

  test "should create boleta_compra" do
    assert_difference('BoletaCompra.count') do
      post boleta_compras_url, params: { boleta_compra: { cantidad: @boleta_compra.cantidad, fecha: @boleta_compra.fecha, monto: @boleta_compra.monto, tipo_pago: @boleta_compra.tipo_pago } }
    end

    assert_redirected_to boleta_compra_url(BoletaCompra.last)
  end

  test "should show boleta_compra" do
    get boleta_compra_url(@boleta_compra)
    assert_response :success
  end

  test "should get edit" do
    get edit_boleta_compra_url(@boleta_compra)
    assert_response :success
  end

  test "should update boleta_compra" do
    patch boleta_compra_url(@boleta_compra), params: { boleta_compra: { cantidad: @boleta_compra.cantidad, fecha: @boleta_compra.fecha, monto: @boleta_compra.monto, tipo_pago: @boleta_compra.tipo_pago } }
    assert_redirected_to boleta_compra_url(@boleta_compra)
  end

  test "should destroy boleta_compra" do
    assert_difference('BoletaCompra.count', -1) do
      delete boleta_compra_url(@boleta_compra)
    end

    assert_redirected_to boleta_compras_url
  end
end
