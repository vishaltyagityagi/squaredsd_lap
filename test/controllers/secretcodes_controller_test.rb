require 'test_helper'

class SecretcodesControllerTest < ActionController::TestCase
  setup do
    @secretcode = secretcodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secretcodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secretcode" do
    assert_difference('Secretcode.count') do
      post :create, secretcode: { SecretCode: @secretcode.SecretCode }
    end

    assert_redirected_to secretcode_path(assigns(:secretcode))
  end

  test "should show secretcode" do
    get :show, id: @secretcode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secretcode
    assert_response :success
  end

  test "should update secretcode" do
    patch :update, id: @secretcode, secretcode: { SecretCode: @secretcode.SecretCode }
    assert_redirected_to secretcode_path(assigns(:secretcode))
  end

  test "should destroy secretcode" do
    assert_difference('Secretcode.count', -1) do
      delete :destroy, id: @secretcode
    end

    assert_redirected_to secretcodes_path
  end
end
