require 'test_helper'

class Registro::LineasControllerTest < ActionController::TestCase
  setup do
    @registro_linea = registro_lineas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_lineas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_linea" do
    assert_difference('Registro::Linea.count') do
      post :create, registro_linea: { codigoPin: @registro_linea.codigoPin, codigoPunk: @registro_linea.codigoPunk, fechaCorte: @registro_linea.fechaCorte, numero: @registro_linea.numero, operadora_id: @registro_linea.operadora_id, plan_id: @registro_linea.plan_id, serial: @registro_linea.serial }
    end

    assert_redirected_to registro_linea_path(assigns(:registro_linea))
  end

  test "should show registro_linea" do
    get :show, id: @registro_linea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_linea
    assert_response :success
  end

  test "should update registro_linea" do
    patch :update, id: @registro_linea, registro_linea: { codigoPin: @registro_linea.codigoPin, codigoPunk: @registro_linea.codigoPunk, fechaCorte: @registro_linea.fechaCorte, numero: @registro_linea.numero, operadora_id: @registro_linea.operadora_id, plan_id: @registro_linea.plan_id, serial: @registro_linea.serial }
    assert_redirected_to registro_linea_path(assigns(:registro_linea))
  end

  test "should destroy registro_linea" do
    assert_difference('Registro::Linea.count', -1) do
      delete :destroy, id: @registro_linea
    end

    assert_redirected_to registro_lineas_path
  end
end
