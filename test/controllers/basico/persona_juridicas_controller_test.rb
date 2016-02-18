require 'test_helper'

class Basico::PersonaJuridicasControllerTest < ActionController::TestCase
  setup do
    @basico_persona_juridica = basico_persona_juridicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_persona_juridicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_persona_juridica" do
    assert_difference('Basico::PersonaJuridica.count') do
      post :create, basico_persona_juridica: { descripcion: @basico_persona_juridica.descripcion, tipo: @basico_persona_juridica.tipo }
    end

    assert_redirected_to basico_persona_juridica_path(assigns(:basico_persona_juridica))
  end

  test "should show basico_persona_juridica" do
    get :show, id: @basico_persona_juridica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_persona_juridica
    assert_response :success
  end

  test "should update basico_persona_juridica" do
    patch :update, id: @basico_persona_juridica, basico_persona_juridica: { descripcion: @basico_persona_juridica.descripcion, tipo: @basico_persona_juridica.tipo }
    assert_redirected_to basico_persona_juridica_path(assigns(:basico_persona_juridica))
  end

  test "should destroy basico_persona_juridica" do
    assert_difference('Basico::PersonaJuridica.count', -1) do
      delete :destroy, id: @basico_persona_juridica
    end

    assert_redirected_to basico_persona_juridicas_path
  end
end
