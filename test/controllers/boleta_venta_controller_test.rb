require 'test_helper'

class BoletaVentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boleta_ventum = boleta_venta(:one)
  end

  test "should get index" do
    get boleta_venta_index_url
    assert_response :success
  end

  test "should get new" do
    get new_boleta_ventum_url
    assert_response :success
  end

  test "should create boleta_ventum" do
    assert_difference('BoletaVenta.count') do
      post boleta_venta_index_url, params: { boleta_ventum: { cantidad: @boleta_ventum.cantidad, fecha: @boleta_ventum.fecha, monto: @boleta_ventum.monto, tipo_pago: @boleta_ventum.tipo_pago } }
    end

    assert_redirected_to boleta_ventum_url(BoletaVenta.last)
  end

  test "should show boleta_ventum" do
    get boleta_ventum_url(@boleta_ventum)
    assert_response :success
  end

  test "should get edit" do
    get edit_boleta_ventum_url(@boleta_ventum)
    assert_response :success
  end

  test "should update boleta_ventum" do
    patch boleta_ventum_url(@boleta_ventum), params: { boleta_ventum: { cantidad: @boleta_ventum.cantidad, fecha: @boleta_ventum.fecha, monto: @boleta_ventum.monto, tipo_pago: @boleta_ventum.tipo_pago } }
    assert_redirected_to boleta_ventum_url(@boleta_ventum)
  end

  test "should destroy boleta_ventum" do
    assert_difference('BoletaVenta.count', -1) do
      delete boleta_ventum_url(@boleta_ventum)
    end

    assert_redirected_to boleta_venta_index_url
  end
end
