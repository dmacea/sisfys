require 'test_helper'

class Basico::OperadorasControllerTest < ActionController::TestCase
  setup do
    @basico_operadora = basico_operadoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_operadoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_operadora" do
    assert_difference('Basico::Operadora.count') do
      post :create, basico_operadora: { nombre: @basico_operadora.nombre }
    end

    assert_redirected_to basico_operadora_path(assigns(:basico_operadora))
  end

  test "should show basico_operadora" do
    get :show, id: @basico_operadora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_operadora
    assert_response :success
  end

  test "should update basico_operadora" do
    patch :update, id: @basico_operadora, basico_operadora: { nombre: @basico_operadora.nombre }
    assert_redirected_to basico_operadora_path(assigns(:basico_operadora))
  end

  test "should destroy basico_operadora" do
    assert_difference('Basico::Operadora.count', -1) do
      delete :destroy, id: @basico_operadora
    end

    assert_redirected_to basico_operadoras_path
  end
end
