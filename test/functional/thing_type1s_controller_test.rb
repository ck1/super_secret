require 'test_helper'

class ThingType1sControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thing_type1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thing_type1" do
    assert_difference('ThingType1.count') do
      post :create, :thing_type1 => { }
    end

    assert_redirected_to thing_type1_path(assigns(:thing_type1))
  end

  test "should show thing_type1" do
    get :show, :id => thing_type1s(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => thing_type1s(:one).to_param
    assert_response :success
  end

  test "should update thing_type1" do
    put :update, :id => thing_type1s(:one).to_param, :thing_type1 => { }
    assert_redirected_to thing_type1_path(assigns(:thing_type1))
  end

  test "should destroy thing_type1" do
    assert_difference('ThingType1.count', -1) do
      delete :destroy, :id => thing_type1s(:one).to_param
    end

    assert_redirected_to thing_type1s_path
  end
end
