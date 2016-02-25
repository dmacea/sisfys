require 'test_helper'

class Registro::ServiciosControllerTest < ActionController::TestCase
  setup do
    @registro_servicio = registro_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_servicio" do
    assert_difference('Registro::Servicio.count') do
      post :create, registro_servicio: { descripcion: @registro_servicio.descripcion, impuesto: @registro_servicio.impuesto, nombre: @registro_servicio.nombre, valor: @registro_servicio.valor }
    end

    assert_redirected_to registro_servicio_path(assigns(:registro_servicio))
  end

  test "should show registro_servicio" do
    get :show, id: @registro_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_servicio
    assert_response :success
  end

  test "should update registro_servicio" do
    patch :update, id: @registro_servicio, registro_servicio: { descripcion: @registro_servicio.descripcion, impuesto: @registro_servicio.impuesto, nombre: @registro_servicio.nombre, valor: @registro_servicio.valor }
    assert_redirected_to registro_servicio_path(assigns(:registro_servicio))
  end

  test "should destroy registro_servicio" do
    assert_difference('Registro::Servicio.count', -1) do
      delete :destroy, id: @registro_servicio
    end

    assert_redirected_to registro_servicios_path
  end
end
