require 'test_helper'

class TsetsControllerTest < ActionController::TestCase
  setup do
    @tset = tsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tset" do
    assert_difference('Tset.count') do
      post :create, tset: { title: @tset.title }
    end

    assert_redirected_to tset_path(assigns(:tset))
  end

  test "should show tset" do
    get :show, id: @tset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tset
    assert_response :success
  end

  test "should update tset" do
    patch :update, id: @tset, tset: { title: @tset.title }
    assert_redirected_to tset_path(assigns(:tset))
  end

  test "should destroy tset" do
    assert_difference('Tset.count', -1) do
      delete :destroy, id: @tset
    end

    assert_redirected_to tsets_path
  end
end
