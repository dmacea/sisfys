require 'test_helper'

class Basico::ParroquiasControllerTest < ActionController::TestCase
  setup do
    @basico_parroquia = basico_parroquias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_parroquias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_parroquia" do
    assert_difference('Basico::Parroquia.count') do
      post :create, basico_parroquia: { municipio_id: @basico_parroquia.municipio_id, nombre: @basico_parroquia.nombre }
    end

    assert_redirected_to basico_parroquia_path(assigns(:basico_parroquia))
  end

  test "should show basico_parroquia" do
    get :show, id: @basico_parroquia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_parroquia
    assert_response :success
  end

  test "should update basico_parroquia" do
    patch :update, id: @basico_parroquia, basico_parroquia: { municipio_id: @basico_parroquia.municipio_id, nombre: @basico_parroquia.nombre }
    assert_redirected_to basico_parroquia_path(assigns(:basico_parroquia))
  end

  test "should destroy basico_parroquia" do
    assert_difference('Basico::Parroquia.count', -1) do
      delete :destroy, id: @basico_parroquia
    end

    assert_redirected_to basico_parroquias_path
  end
end
