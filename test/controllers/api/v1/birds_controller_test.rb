require 'test_helper'

class Api::V1::BirdsControllerTest < ActionController::TestCase
  setup do
    @api_v1_bird = api_v1_birds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_birds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_bird" do
    assert_difference('Api::V1::Bird.count') do
      post :create, api_v1_bird: {  }
    end

    assert_redirected_to api_v1_bird_path(assigns(:api_v1_bird))
  end

  test "should show api_v1_bird" do
    get :show, id: @api_v1_bird
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_bird
    assert_response :success
  end

  test "should update api_v1_bird" do
    patch :update, id: @api_v1_bird, api_v1_bird: {  }
    assert_redirected_to api_v1_bird_path(assigns(:api_v1_bird))
  end

  test "should destroy api_v1_bird" do
    assert_difference('Api::V1::Bird.count', -1) do
      delete :destroy, id: @api_v1_bird
    end

    assert_redirected_to api_v1_birds_path
  end
end
