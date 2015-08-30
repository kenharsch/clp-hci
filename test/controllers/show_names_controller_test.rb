require 'test_helper'

class ShowNamesControllerTest < ActionController::TestCase
  setup do
    @show_name = show_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:show_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create show_name" do
    assert_difference('ShowName.count') do
      post :create, show_name: {  }
    end

    assert_redirected_to show_name_path(assigns(:show_name))
  end

  test "should show show_name" do
    get :show, id: @show_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @show_name
    assert_response :success
  end

  test "should update show_name" do
    patch :update, id: @show_name, show_name: {  }
    assert_redirected_to show_name_path(assigns(:show_name))
  end

  test "should destroy show_name" do
    assert_difference('ShowName.count', -1) do
      delete :destroy, id: @show_name
    end

    assert_redirected_to show_names_path
  end
end
