require 'test_helper'

class Basico::MunicipiosControllerTest < ActionController::TestCase
  setup do
    @basico_municipio = basico_municipios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_municipios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_municipio" do
    assert_difference('Basico::Municipio.count') do
      post :create, basico_municipio: { estado_id: @basico_municipio.estado_id, nombre: @basico_municipio.nombre }
    end

    assert_redirected_to basico_municipio_path(assigns(:basico_municipio))
  end

  test "should show basico_municipio" do
    get :show, id: @basico_municipio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_municipio
    assert_response :success
  end

  test "should update basico_municipio" do
    patch :update, id: @basico_municipio, basico_municipio: { estado_id: @basico_municipio.estado_id, nombre: @basico_municipio.nombre }
    assert_redirected_to basico_municipio_path(assigns(:basico_municipio))
  end

  test "should destroy basico_municipio" do
    assert_difference('Basico::Municipio.count', -1) do
      delete :destroy, id: @basico_municipio
    end

    assert_redirected_to basico_municipios_path
  end
end
