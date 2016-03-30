require 'test_helper'

class ApiConsolesControllerTest < ActionController::TestCase
  setup do
    @api_console = api_consoles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_consoles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_console" do
    assert_difference('ApiConsole.count') do
      post :create, api_console: {  }
    end

    assert_redirected_to api_console_path(assigns(:api_console))
  end

  test "should show api_console" do
    get :show, id: @api_console
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_console
    assert_response :success
  end

  test "should update api_console" do
    patch :update, id: @api_console, api_console: {  }
    assert_redirected_to api_console_path(assigns(:api_console))
  end

  test "should destroy api_console" do
    assert_difference('ApiConsole.count', -1) do
      delete :destroy, id: @api_console
    end

    assert_redirected_to api_consoles_path
  end
end
