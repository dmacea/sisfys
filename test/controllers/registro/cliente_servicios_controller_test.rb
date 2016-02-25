require 'test_helper'

class Registro::ClienteServiciosControllerTest < ActionController::TestCase
  setup do
    @registro_cliente_servicio = registro_cliente_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_cliente_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_cliente_servicio" do
    assert_difference('Registro::ClienteServicio.count') do
      post :create, registro_cliente_servicio: { cliente_id: @registro_cliente_servicio.cliente_id, dispositivo_id: @registro_cliente_servicio.dispositivo_id, estado: @registro_cliente_servicio.estado, fechaInicio_id: @registro_cliente_servicio.fechaInicio_id, pagaPlan: @registro_cliente_servicio.pagaPlan, servicio_id: @registro_cliente_servicio.servicio_id }
    end

    assert_redirected_to registro_cliente_servicio_path(assigns(:registro_cliente_servicio))
  end

  test "should show registro_cliente_servicio" do
    get :show, id: @registro_cliente_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_cliente_servicio
    assert_response :success
  end

  test "should update registro_cliente_servicio" do
    patch :update, id: @registro_cliente_servicio, registro_cliente_servicio: { cliente_id: @registro_cliente_servicio.cliente_id, dispositivo_id: @registro_cliente_servicio.dispositivo_id, estado: @registro_cliente_servicio.estado, fechaInicio_id: @registro_cliente_servicio.fechaInicio_id, pagaPlan: @registro_cliente_servicio.pagaPlan, servicio_id: @registro_cliente_servicio.servicio_id }
    assert_redirected_to registro_cliente_servicio_path(assigns(:registro_cliente_servicio))
  end

  test "should destroy registro_cliente_servicio" do
    assert_difference('Registro::ClienteServicio.count', -1) do
      delete :destroy, id: @registro_cliente_servicio
    end

    assert_redirected_to registro_cliente_servicios_path
  end
end
