require 'test_helper'

class XimesControllerTest < ActionController::TestCase
  setup do
    @xime = ximes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ximes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xime" do
    assert_difference('Xime.count') do
      post :create, xime: { description: @xime.description, name: @xime.name, picture: @xime.picture }
    end

    assert_redirected_to xime_path(assigns(:xime))
  end

  test "should show xime" do
    get :show, id: @xime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xime
    assert_response :success
  end

  test "should update xime" do
    patch :update, id: @xime, xime: { description: @xime.description, name: @xime.name, picture: @xime.picture }
    assert_redirected_to xime_path(assigns(:xime))
  end

  test "should destroy xime" do
    assert_difference('Xime.count', -1) do
      delete :destroy, id: @xime
    end

    assert_redirected_to ximes_path
  end
end
