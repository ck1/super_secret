require 'test_helper'

class ThingType2sControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thing_type2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thing_type2" do
    assert_difference('ThingType2.count') do
      post :create, :thing_type2 => { }
    end

    assert_redirected_to thing_type2_path(assigns(:thing_type2))
  end

  test "should show thing_type2" do
    get :show, :id => thing_type2s(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => thing_type2s(:one).to_param
    assert_response :success
  end

  test "should update thing_type2" do
    put :update, :id => thing_type2s(:one).to_param, :thing_type2 => { }
    assert_redirected_to thing_type2_path(assigns(:thing_type2))
  end

  test "should destroy thing_type2" do
    assert_difference('ThingType2.count', -1) do
      delete :destroy, :id => thing_type2s(:one).to_param
    end

    assert_redirected_to thing_type2s_path
  end
end
