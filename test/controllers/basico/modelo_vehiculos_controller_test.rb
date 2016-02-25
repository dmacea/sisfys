require 'test_helper'

class Basico::ModeloVehiculosControllerTest < ActionController::TestCase
  setup do
    @basico_modelo_vehiculo = basico_modelo_vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_modelo_vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_modelo_vehiculo" do
    assert_difference('Basico::ModeloVehiculo.count') do
      post :create, basico_modelo_vehiculo: { marcaVehiculo_id: @basico_modelo_vehiculo.marcaVehiculo_id, nombre: @basico_modelo_vehiculo.nombre }
    end

    assert_redirected_to basico_modelo_vehiculo_path(assigns(:basico_modelo_vehiculo))
  end

  test "should show basico_modelo_vehiculo" do
    get :show, id: @basico_modelo_vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_modelo_vehiculo
    assert_response :success
  end

  test "should update basico_modelo_vehiculo" do
    patch :update, id: @basico_modelo_vehiculo, basico_modelo_vehiculo: { marcaVehiculo_id: @basico_modelo_vehiculo.marcaVehiculo_id, nombre: @basico_modelo_vehiculo.nombre }
    assert_redirected_to basico_modelo_vehiculo_path(assigns(:basico_modelo_vehiculo))
  end

  test "should destroy basico_modelo_vehiculo" do
    assert_difference('Basico::ModeloVehiculo.count', -1) do
      delete :destroy, id: @basico_modelo_vehiculo
    end

    assert_redirected_to basico_modelo_vehiculos_path
  end
end
