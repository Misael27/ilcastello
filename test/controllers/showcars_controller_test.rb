require 'test_helper'

class ShowcarsControllerTest < ActionController::TestCase
  setup do
    @showcar = showcars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showcars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showcar" do
    assert_difference('Showcar.count') do
      post :create, showcar: { description: @showcar.description, name: @showcar.name, photo_link: @showcar.photo_link }
    end

    assert_redirected_to showcar_path(assigns(:showcar))
  end

  test "should show showcar" do
    get :show, id: @showcar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @showcar
    assert_response :success
  end

  test "should update showcar" do
    patch :update, id: @showcar, showcar: { description: @showcar.description, name: @showcar.name, photo_link: @showcar.photo_link }
    assert_redirected_to showcar_path(assigns(:showcar))
  end

  test "should destroy showcar" do
    assert_difference('Showcar.count', -1) do
      delete :destroy, id: @showcar
    end

    assert_redirected_to showcars_path
  end
end
