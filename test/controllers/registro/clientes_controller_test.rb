require 'test_helper'

class Registro::ClientesControllerTest < ActionController::TestCase
  setup do
    @registro_cliente = registro_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_cliente" do
    assert_difference('Registro::Cliente.count') do
      post :create, registro_cliente: { apellidos: @registro_cliente.apellidos, direccion: @registro_cliente.direccion, email: @registro_cliente.email, identidad: @registro_cliente.identidad, nombres: @registro_cliente.nombres, parroquia_id: @registro_cliente.parroquia_id, personaJuridica_id: @registro_cliente.personaJuridica_id, pin: @registro_cliente.pin, tiwtter: @registro_cliente.tiwtter, web: @registro_cliente.web }
    end

    assert_redirected_to registro_cliente_path(assigns(:registro_cliente))
  end

  test "should show registro_cliente" do
    get :show, id: @registro_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_cliente
    assert_response :success
  end

  test "should update registro_cliente" do
    patch :update, id: @registro_cliente, registro_cliente: { apellidos: @registro_cliente.apellidos, direccion: @registro_cliente.direccion, email: @registro_cliente.email, identidad: @registro_cliente.identidad, nombres: @registro_cliente.nombres, parroquia_id: @registro_cliente.parroquia_id, personaJuridica_id: @registro_cliente.personaJuridica_id, pin: @registro_cliente.pin, tiwtter: @registro_cliente.tiwtter, web: @registro_cliente.web }
    assert_redirected_to registro_cliente_path(assigns(:registro_cliente))
  end

  test "should destroy registro_cliente" do
    assert_difference('Registro::Cliente.count', -1) do
      delete :destroy, id: @registro_cliente
    end

    assert_redirected_to registro_clientes_path
  end
end
