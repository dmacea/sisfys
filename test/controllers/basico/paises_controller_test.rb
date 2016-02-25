require 'test_helper'

class Basico::PaisesControllerTest < ActionController::TestCase
  setup do
    @venezuela = basico_paises(:one)
    @colombia = basico_paises(:two)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_paises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end


  test "don't should create  Guatemala " do
    post :create, basico_pais: { codigo: "", nombre:""}
    assert_response :success

    errorCodigo= assigns(:basico_pais).errors[:codigo].join
    errorNombre = assigns(:basico_pais).errors[:nombre].join

    assert_equal(errorCodigo,"Ingrese codigo telefonico")
    assert_equal(errorNombre,"Ingrese Nombre del país")

    post :create, basico_pais: { codigo: "012545", nombre:"GUATEMALACONMASDE30CARACTERESEJEJE"}

    errorCodigo= assigns(:basico_pais).errors[:codigo].join
    errorNombre = assigns(:basico_pais).errors[:nombre].join

    assert_equal(errorCodigo,"4 caracteres es el maximo")
    assert_equal(errorNombre,"30 caracteres es el maximo")
  end

  test "should create  Guatemala " do
    assert_difference('Basico::Pais.count') do
      post :create, basico_pais: { codigo: "12", nombre:"Guatemala"}
    end
    assert_redirected_to basico_pais_path(assigns(:basico_pais))
  end

  test "don't should create  Guatemala anything " do
    assert_difference('Basico::Pais.count',1) do
      post :create, basico_pais: { codigo: "12", nombre:"Guatemala"}
    end
    assert_redirected_to basico_pais_path(assigns(:basico_pais))
  end


  test "should show  pais" do
    get :show, id: @venezuela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venezuela
    assert_response :success
  end

  test "should update pais" do
    patch :update, id: @venezuela, basico_pais: { codigo: @venezuela.codigo, nombre: @venezuela.nombre }
    assert_redirected_to basico_pais_path(assigns(:basico_pais))
  end

  test "should destroy Colombia" do
    assert_difference('Basico::Pais.count', -1) do
      delete :destroy, id: @colombia
    end
    assert_redirected_to basico_paises_path
  end

  test "don't should destroy Venezuela" do
    delete :destroy, id: @venezuela
    assert_equal assigns(:basico_pais).errors.size, 1
  end
end
