require 'test_helper'

class Basico::EstadosControllerTest < ActionController::TestCase

  setup do
    @lara = basico_estados(:one)
    @maracay = basico_estados(:two)
    @venezuela = basico_paises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create Yaracuy" do
    assert_difference('Basico::Estado.count') do
      post :create, basico_estado: { codigo: "058", nombre: "Yaracuy", pais_id: @venezuela.id }
    end
    assert_redirected_to basico_estado_path(assigns(:basico_estado))
  end



  test "don't should create  Yaracuy " do
    post :create, basico_estado: { codigo: "", nombre: "", pais_id: nil }
    assert_response :success

    errorCodigo= assigns(:basico_estado).errors[:codigo].join
    errorNombre = assigns(:basico_estado).errors[:nombre].join
    errorPais = assigns(:basico_estado).errors[:pais].join

    assert_equal(errorCodigo,"Ingrese codigo telefonico")
    assert_equal(errorNombre,"Ingrese Nombre del Estado")
    assert_equal(errorPais,"Seleccione el Pais")

    post :create, basico_estado: { codigo: "00004", nombre: "YAAAAAAAAAAARAAAAAAAAACUUUUUUUYYYYYYYYYY", pais_id: nil }

    errorCodigo= assigns(:basico_pais).errors[:codigo].join
    errorNombre = assigns(:basico_pais).errors[:nombre].join

    assert_equal(errorCodigo,"4 caracteres es el maximo")
    assert_equal(errorNombre,"30 caracteres es el maximo")
  end



  test "should show basico_estado" do
    get :show, id: @lara
    assert_response :success
  end

  test "should get edit lara " do
    get :edit, id: @lara
    assert_response :success
  end

  test "should update lara" do
    patch :update, id: @lara, basico_estado: { codigo: @lara.codigo, nombre: @lara.nombre, pais_id: @lara.pais_id }
    assert_redirected_to basico_estado_path(assigns(:basico_estado))
  end

  test "should destroy Maracay" do
    assert_difference('Basico::Estado.count', -1) do
      delete :destroy, id: @maracay
    end
    assert_redirected_to basico_estados_path
  end
end
