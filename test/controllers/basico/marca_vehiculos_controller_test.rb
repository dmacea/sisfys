require 'test_helper'

class Basico::MarcaVehiculosControllerTest < ActionController::TestCase
  setup do
    @basico_marca_vehiculo = basico_marca_vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_marca_vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_marca_vehiculo" do
    assert_difference('Basico::MarcaVehiculo.count') do
      post :create, basico_marca_vehiculo: { nombre: @basico_marca_vehiculo.nombre }
    end

    assert_redirected_to basico_marca_vehiculo_path(assigns(:basico_marca_vehiculo))
  end

  test "should show basico_marca_vehiculo" do
    get :show, id: @basico_marca_vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_marca_vehiculo
    assert_response :success
  end

  test "should update basico_marca_vehiculo" do
    patch :update, id: @basico_marca_vehiculo, basico_marca_vehiculo: { nombre: @basico_marca_vehiculo.nombre }
    assert_redirected_to basico_marca_vehiculo_path(assigns(:basico_marca_vehiculo))
  end

  test "should destroy basico_marca_vehiculo" do
    assert_difference('Basico::MarcaVehiculo.count', -1) do
      delete :destroy, id: @basico_marca_vehiculo
    end

    assert_redirected_to basico_marca_vehiculos_path
  end
end
