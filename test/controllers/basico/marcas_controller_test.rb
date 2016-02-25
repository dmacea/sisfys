require 'test_helper'

class Basico::MarcasControllerTest < ActionController::TestCase
  setup do
    @basico_marca = basico_marcas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_marcas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_marca" do
    assert_difference('Basico::Marca.count') do
      post :create, basico_marca: { nombre: @basico_marca.nombre }
    end

    assert_redirected_to basico_marca_path(assigns(:basico_marca))
  end

  test "should show basico_marca" do
    get :show, id: @basico_marca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_marca
    assert_response :success
  end

  test "should update basico_marca" do
    patch :update, id: @basico_marca, basico_marca: { nombre: @basico_marca.nombre }
    assert_redirected_to basico_marca_path(assigns(:basico_marca))
  end

  test "should destroy basico_marca" do
    assert_difference('Basico::Marca.count', -1) do
      delete :destroy, id: @basico_marca
    end

    assert_redirected_to basico_marcas_path
  end
end
