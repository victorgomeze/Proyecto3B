require 'test_helper'

class CarroVentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carro_ventum = carro_venta(:one)
  end

  test "should get index" do
    get carro_venta_index_url
    assert_response :success
  end

  test "should get new" do
    get new_carro_ventum_url
    assert_response :success
  end

  test "should create carro_ventum" do
    assert_difference('CarroVenta.count') do
      post carro_venta_index_url, params: { carro_ventum: { cantidad: @carro_ventum.cantidad } }
    end

    assert_redirected_to carro_ventum_url(CarroVenta.last)
  end

  test "should show carro_ventum" do
    get carro_ventum_url(@carro_ventum)
    assert_response :success
  end

  test "should get edit" do
    get edit_carro_ventum_url(@carro_ventum)
    assert_response :success
  end

  test "should update carro_ventum" do
    patch carro_ventum_url(@carro_ventum), params: { carro_ventum: { cantidad: @carro_ventum.cantidad } }
    assert_redirected_to carro_ventum_url(@carro_ventum)
  end

  test "should destroy carro_ventum" do
    assert_difference('CarroVenta.count', -1) do
      delete carro_ventum_url(@carro_ventum)
    end

    assert_redirected_to carro_venta_index_url
  end
end
