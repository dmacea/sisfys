require 'test_helper'

class Registro::VehiculosControllerTest < ActionController::TestCase
  setup do
    @registro_vehiculo = registro_vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_vehiculo" do
    assert_difference('Registro::Vehiculo.count') do
      post :create, registro_vehiculo: { ano: @registro_vehiculo.ano, cliente_id: @registro_vehiculo.cliente_id, color: @registro_vehiculo.color, dispositivo_id: @registro_vehiculo.dispositivo_id, encargado: @registro_vehiculo.encargado, modelo_id: @registro_vehiculo.modelo_id, placa: @registro_vehiculo.placa, serialCarroceria: @registro_vehiculo.serialCarroceria, serialMotor: @registro_vehiculo.serialMotor, tipo_id: @registro_vehiculo.tipo_id }
    end

    assert_redirected_to registro_vehiculo_path(assigns(:registro_vehiculo))
  end

  test "should show registro_vehiculo" do
    get :show, id: @registro_vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_vehiculo
    assert_response :success
  end

  test "should update registro_vehiculo" do
    patch :update, id: @registro_vehiculo, registro_vehiculo: { ano: @registro_vehiculo.ano, cliente_id: @registro_vehiculo.cliente_id, color: @registro_vehiculo.color, dispositivo_id: @registro_vehiculo.dispositivo_id, encargado: @registro_vehiculo.encargado, modelo_id: @registro_vehiculo.modelo_id, placa: @registro_vehiculo.placa, serialCarroceria: @registro_vehiculo.serialCarroceria, serialMotor: @registro_vehiculo.serialMotor, tipo_id: @registro_vehiculo.tipo_id }
    assert_redirected_to registro_vehiculo_path(assigns(:registro_vehiculo))
  end

  test "should destroy registro_vehiculo" do
    assert_difference('Registro::Vehiculo.count', -1) do
      delete :destroy, id: @registro_vehiculo
    end

    assert_redirected_to registro_vehiculos_path
  end
end
