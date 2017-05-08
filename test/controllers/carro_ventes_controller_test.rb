require 'test_helper'

class CarroVentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carro_vente = carro_ventes(:one)
  end

  test "should get index" do
    get carro_ventes_url
    assert_response :success
  end

  test "should get new" do
    get new_carro_vente_url
    assert_response :success
  end

  test "should create carro_vente" do
    assert_difference('CarroVente.count') do
      post carro_ventes_url, params: { carro_vente: { cantidad_prod: @carro_vente.cantidad_prod } }
    end

    assert_redirected_to carro_vente_url(CarroVente.last)
  end

  test "should show carro_vente" do
    get carro_vente_url(@carro_vente)
    assert_response :success
  end

  test "should get edit" do
    get edit_carro_vente_url(@carro_vente)
    assert_response :success
  end

  test "should update carro_vente" do
    patch carro_vente_url(@carro_vente), params: { carro_vente: { cantidad_prod: @carro_vente.cantidad_prod } }
    assert_redirected_to carro_vente_url(@carro_vente)
  end

  test "should destroy carro_vente" do
    assert_difference('CarroVente.count', -1) do
      delete carro_vente_url(@carro_vente)
    end

    assert_redirected_to carro_ventes_url
  end
end
