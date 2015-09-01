require 'test_helper'

class RealsControllerTest < ActionController::TestCase
  setup do
    @real = reals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create real" do
    assert_difference('Real.count') do
      post :create, real: {  }
    end

    assert_redirected_to real_path(assigns(:real))
  end

  test "should show real" do
    get :show, id: @real
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @real
    assert_response :success
  end

  test "should update real" do
    patch :update, id: @real, real: {  }
    assert_redirected_to real_path(assigns(:real))
  end

  test "should destroy real" do
    assert_difference('Real.count', -1) do
      delete :destroy, id: @real
    end

    assert_redirected_to reals_path
  end
end
