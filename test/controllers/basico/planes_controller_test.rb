require 'test_helper'

class Basico::PlanesControllerTest < ActionController::TestCase
  setup do
    @basico_plan = basico_planes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basico_planes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basico_plan" do
    assert_difference('Basico::Plan.count') do
      post :create, basico_plan: { nombre: @basico_plan.nombre }
    end

    assert_redirected_to basico_plan_path(assigns(:basico_plan))
  end

  test "should show basico_plan" do
    get :show, id: @basico_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basico_plan
    assert_response :success
  end

  test "should update basico_plan" do
    patch :update, id: @basico_plan, basico_plan: { nombre: @basico_plan.nombre }
    assert_redirected_to basico_plan_path(assigns(:basico_plan))
  end

  test "should destroy basico_plan" do
    assert_difference('Basico::Plan.count', -1) do
      delete :destroy, id: @basico_plan
    end

    assert_redirected_to basico_planes_path
  end
end
