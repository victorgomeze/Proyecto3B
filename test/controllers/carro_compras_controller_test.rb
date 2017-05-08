require 'test_helper'

class CarroComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carro_compra = carro_compras(:one)
  end

  test "should get index" do
    get carro_compras_url
    assert_response :success
  end

  test "should get new" do
    get new_carro_compra_url
    assert_response :success
  end

  test "should create carro_compra" do
    assert_difference('CarroCompra.count') do
      post carro_compras_url, params: { carro_compra: { cantidad_prod: @carro_compra.cantidad_prod } }
    end

    assert_redirected_to carro_compra_url(CarroCompra.last)
  end

  test "should show carro_compra" do
    get carro_compra_url(@carro_compra)
    assert_response :success
  end

  test "should get edit" do
    get edit_carro_compra_url(@carro_compra)
    assert_response :success
  end

  test "should update carro_compra" do
    patch carro_compra_url(@carro_compra), params: { carro_compra: { cantidad_prod: @carro_compra.cantidad_prod } }
    assert_redirected_to carro_compra_url(@carro_compra)
  end

  test "should destroy carro_compra" do
    assert_difference('CarroCompra.count', -1) do
      delete carro_compra_url(@carro_compra)
    end

    assert_redirected_to carro_compras_url
  end
end
