require 'test_helper'

class SolesControllerTest < ActionController::TestCase
  setup do
    @sole = soles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sole" do
    assert_difference('Sole.count') do
      post :create, sole: { activated: @sole.activated, left: @sole.left }
    end

    assert_redirected_to sole_path(assigns(:sole))
  end

  test "should show sole" do
    get :show, id: @sole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sole
    assert_response :success
  end

  test "should update sole" do
    patch :update, id: @sole, sole: { activated: @sole.activated, left: @sole.left }
    assert_redirected_to sole_path(assigns(:sole))
  end

  test "should destroy sole" do
    assert_difference('Sole.count', -1) do
      delete :destroy, id: @sole
    end

    assert_redirected_to soles_path
  end
end
