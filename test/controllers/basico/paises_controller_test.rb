require 'test_helper'

class Basico::PaisesControllerTest < ActionController::TestCase
  setup do
    @basico_pais = basico_paises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_paises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_pais" do
    assert_difference('Basico::Pais.count') do
      post :create, basico_pais: { codigo: @basico_pais.codigo, nombre: @basico_pais.nombre }
    end

    assert_redirected_to basico_pais_path(assigns(:basico_pais))
  end

  test "should show basico_pais" do
    get :show, id: @basico_pais
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_pais
    assert_response :success
  end

  test "should update basico_pais" do
    patch :update, id: @basico_pais, basico_pais: { codigo: @basico_pais.codigo, nombre: @basico_pais.nombre }
    assert_redirected_to basico_pais_path(assigns(:basico_pais))
  end

  test "should destroy basico_pais" do
    assert_difference('Basico::Pais.count', -1) do
      delete :destroy, id: @basico_pais
    end

    assert_redirected_to basico_paises_path
  end
end
