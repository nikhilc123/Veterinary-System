require 'test_helper'

class PettypesControllerTest < ActionController::TestCase
  setup do
    @pettype = pettypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pettypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pettype" do
    assert_difference('Pettype.count') do
      post :create, pettype: { name: @pettype.name }
    end

    assert_redirected_to pettype_path(assigns(:pettype))
  end

  test "should show pettype" do
    get :show, id: @pettype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pettype
    assert_response :success
  end

  test "should update pettype" do
    patch :update, id: @pettype, pettype: { name: @pettype.name }
    assert_redirected_to pettype_path(assigns(:pettype))
  end

  test "should destroy pettype" do
    assert_difference('Pettype.count', -1) do
      delete :destroy, id: @pettype
    end

    assert_redirected_to pettypes_path
  end
end
