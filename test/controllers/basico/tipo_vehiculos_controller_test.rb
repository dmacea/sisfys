require 'test_helper'

class Basico::TipoVehiculosControllerTest < ActionController::TestCase
  setup do
    @basico_tipo_vehiculo = basico_tipo_vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_tipo_vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_tipo_vehiculo" do
    assert_difference('Basico::TipoVehiculo.count') do
      post :create, basico_tipo_vehiculo: { nombre: @basico_tipo_vehiculo.nombre }
    end

    assert_redirected_to basico_tipo_vehiculo_path(assigns(:basico_tipo_vehiculo))
  end

  test "should show basico_tipo_vehiculo" do
    get :show, id: @basico_tipo_vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_tipo_vehiculo
    assert_response :success
  end

  test "should update basico_tipo_vehiculo" do
    patch :update, id: @basico_tipo_vehiculo, basico_tipo_vehiculo: { nombre: @basico_tipo_vehiculo.nombre }
    assert_redirected_to basico_tipo_vehiculo_path(assigns(:basico_tipo_vehiculo))
  end

  test "should destroy basico_tipo_vehiculo" do
    assert_difference('Basico::TipoVehiculo.count', -1) do
      delete :destroy, id: @basico_tipo_vehiculo
    end

    assert_redirected_to basico_tipo_vehiculos_path
  end
end
