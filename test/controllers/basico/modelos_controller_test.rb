require 'test_helper'

class Basico::ModelosControllerTest < ActionController::TestCase
  setup do
    @basico_modelo = basico_modelos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_modelos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_modelo" do
    assert_difference('Basico::Modelo.count') do
      post :create, basico_modelo: { marca_id: @basico_modelo.marca_id, nombre: @basico_modelo.nombre }
    end

    assert_redirected_to basico_modelo_path(assigns(:basico_modelo))
  end

  test "should show basico_modelo" do
    get :show, id: @basico_modelo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_modelo
    assert_response :success
  end

  test "should update basico_modelo" do
    patch :update, id: @basico_modelo, basico_modelo: { marca_id: @basico_modelo.marca_id, nombre: @basico_modelo.nombre }
    assert_redirected_to basico_modelo_path(assigns(:basico_modelo))
  end

  test "should destroy basico_modelo" do
    assert_difference('Basico::Modelo.count', -1) do
      delete :destroy, id: @basico_modelo
    end

    assert_redirected_to basico_modelos_path
  end
end
