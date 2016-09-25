require 'test_helper'

class CatalagosControllerTest < ActionController::TestCase
  setup do
    @catalago = catalagos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalagos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalago" do
    assert_difference('Catalago.count') do
      post :create, catalago: { description: @catalago.description, photo: @catalago.photo, vehicle: @catalago.vehicle }
    end

    assert_redirected_to catalago_path(assigns(:catalago))
  end

  test "should show catalago" do
    get :show, id: @catalago
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalago
    assert_response :success
  end

  test "should update catalago" do
    patch :update, id: @catalago, catalago: { description: @catalago.description, photo: @catalago.photo, vehicle: @catalago.vehicle }
    assert_redirected_to catalago_path(assigns(:catalago))
  end

  test "should destroy catalago" do
    assert_difference('Catalago.count', -1) do
      delete :destroy, id: @catalago
    end

    assert_redirected_to catalagos_path
  end
end
