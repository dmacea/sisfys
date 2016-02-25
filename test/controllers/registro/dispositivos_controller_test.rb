require 'test_helper'

class Registro::DispositivosControllerTest < ActionController::TestCase
  setup do
    @registro_dispositivo = registro_dispositivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_dispositivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_dispositivo" do
    assert_difference('Registro::Dispositivo.count') do
      post :create, registro_dispositivo: { email: @registro_dispositivo.email, linea_id: @registro_dispositivo.linea_id, modelo_id: @registro_dispositivo.modelo_id, serial: @registro_dispositivo.serial, tipo: @registro_dispositivo.tipo }
    end

    assert_redirected_to registro_dispositivo_path(assigns(:registro_dispositivo))
  end

  test "should show registro_dispositivo" do
    get :show, id: @registro_dispositivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_dispositivo
    assert_response :success
  end

  test "should update registro_dispositivo" do
    patch :update, id: @registro_dispositivo, registro_dispositivo: { email: @registro_dispositivo.email, linea_id: @registro_dispositivo.linea_id, modelo_id: @registro_dispositivo.modelo_id, serial: @registro_dispositivo.serial, tipo: @registro_dispositivo.tipo }
    assert_redirected_to registro_dispositivo_path(assigns(:registro_dispositivo))
  end

  test "should destroy registro_dispositivo" do
    assert_difference('Registro::Dispositivo.count', -1) do
      delete :destroy, id: @registro_dispositivo
    end

    assert_redirected_to registro_dispositivos_path
  end
end
