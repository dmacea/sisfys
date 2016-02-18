require 'test_helper'

class Basico::EstadosControllerTest < ActionController::TestCase
  setup do
    @basico_estado = basico_estados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_estados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_estado" do
    assert_difference('Basico::Estado.count') do
      post :create, basico_estado: { codigo: @basico_estado.codigo, nombre: @basico_estado.nombre, pais_id: @basico_estado.pais_id }
    end

    assert_redirected_to basico_estado_path(assigns(:basico_estado))
  end

  test "should show basico_estado" do
    get :show, id: @basico_estado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_estado
    assert_response :success
  end

  test "should update basico_estado" do
    patch :update, id: @basico_estado, basico_estado: { codigo: @basico_estado.codigo, nombre: @basico_estado.nombre, pais_id: @basico_estado.pais_id }
    assert_redirected_to basico_estado_path(assigns(:basico_estado))
  end

  test "should destroy basico_estado" do
    assert_difference('Basico::Estado.count', -1) do
      delete :destroy, id: @basico_estado
    end

    assert_redirected_to basico_estados_path
  end
end
