require 'test_helper'

class Registro::ClienteServicioDetallesControllerTest < ActionController::TestCase
  setup do
    @registro_cliente_servicio_detalle = registro_cliente_servicio_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_cliente_servicio_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_cliente_servicio_detalle" do
    assert_difference('Registro::ClienteServicioDetalle.count') do
      post :create, registro_cliente_servicio_detalle: { estado: @registro_cliente_servicio_detalle.estado, fecha: @registro_cliente_servicio_detalle.fecha, servicio_id: @registro_cliente_servicio_detalle.servicio_id }
    end

    assert_redirected_to registro_cliente_servicio_detalle_path(assigns(:registro_cliente_servicio_detalle))
  end

  test "should show registro_cliente_servicio_detalle" do
    get :show, id: @registro_cliente_servicio_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_cliente_servicio_detalle
    assert_response :success
  end

  test "should update registro_cliente_servicio_detalle" do
    patch :update, id: @registro_cliente_servicio_detalle, registro_cliente_servicio_detalle: { estado: @registro_cliente_servicio_detalle.estado, fecha: @registro_cliente_servicio_detalle.fecha, servicio_id: @registro_cliente_servicio_detalle.servicio_id }
    assert_redirected_to registro_cliente_servicio_detalle_path(assigns(:registro_cliente_servicio_detalle))
  end

  test "should destroy registro_cliente_servicio_detalle" do
    assert_difference('Registro::ClienteServicioDetalle.count', -1) do
      delete :destroy, id: @registro_cliente_servicio_detalle
    end

    assert_redirected_to registro_cliente_servicio_detalles_path
  end
end
