require 'test_helper'

class LokhisControllerTest < ActionController::TestCase
  setup do
    @lokhi = lokhis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lokhis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lokhi" do
    assert_difference('Lokhi.count') do
      post :create, lokhi: { age: @lokhi.age, name: @lokhi.name }
    end

    assert_redirected_to lokhi_path(assigns(:lokhi))
  end

  test "should show lokhi" do
    get :show, id: @lokhi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lokhi
    assert_response :success
  end

  test "should update lokhi" do
    patch :update, id: @lokhi, lokhi: { age: @lokhi.age, name: @lokhi.name }
    assert_redirected_to lokhi_path(assigns(:lokhi))
  end

  test "should destroy lokhi" do
    assert_difference('Lokhi.count', -1) do
      delete :destroy, id: @lokhi
    end

    assert_redirected_to lokhis_path
  end
end
