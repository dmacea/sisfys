require 'test_helper'

class Basico::MunicipiosControllerTest < ActionController::TestCase
  setup do
    @irribarren = basico_municipios(:one)
    @jimenez = basico_municipios(:two)
    @lara = basico_estados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:municipios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_municipio" do
    assert_difference('Basico::Municipio.count') do
      post :create, basico_municipio: { estado_id: @lara.id, nombre: "Sanare" }
    end
    assert_redirected_to basico_municipio_path(assigns(:basico_municipio))
  end

 

  test "don't should create  basico_municipio " do
    post :create, basico_municipio: { estado_id: nil, nombre: "" }
    assert_response :success

    errorNombre = assigns(:basico_municipio).errors[:nombre].join
    errorEstado = assigns(:basico_municipio).errors[:estado].join

    assert_equal(errorNombre,"Ingrese Nombre del Estado")
    assert_equal(errorEstado,"Seleccione el Estado")

    post :create, basico_municipio: { estado_id: @lara.id, nombre: "nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn" }
    errorNombre = assigns(:basico_municipio).errors[:nombre].join
    assert_equal(errorNombre,"30 caracteres es el maximo")
  end




  test "should show irribarren" do
    get :show, id: @irribarren
    assert_response :success
  end

  test "should get edit irribarren" do
    get :edit, id: @irribarren
    assert_response :success
  end

  test "should update irribarren" do
    patch :update, id: @irribarren, basico_municipio: { estado_id: @irribarren.estado_id, nombre: @irribarren.nombre }
    assert_redirected_to basico_municipio_path(assigns(:basico_municipio))
  end

  test "should destroy irribarren" do
    assert_difference('Basico::Municipio.count', -1) do
      delete :destroy, id: @irribarren
    end

    assert_redirected_to basico_municipios_path
  end
end
