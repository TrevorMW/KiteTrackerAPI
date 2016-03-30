require 'test_helper'

class Api::V1::SightingsControllerTest < ActionController::TestCase
  setup do
    @api_v1_sighting = api_v1_sightings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_sightings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_sighting" do
    assert_difference('Api::V1::Sighting.count') do
      post :create, api_v1_sighting: {  }
    end

    assert_redirected_to api_v1_sighting_path(assigns(:api_v1_sighting))
  end

  test "should show api_v1_sighting" do
    get :show, id: @api_v1_sighting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_sighting
    assert_response :success
  end

  test "should update api_v1_sighting" do
    patch :update, id: @api_v1_sighting, api_v1_sighting: {  }
    assert_redirected_to api_v1_sighting_path(assigns(:api_v1_sighting))
  end

  test "should destroy api_v1_sighting" do
    assert_difference('Api::V1::Sighting.count', -1) do
      delete :destroy, id: @api_v1_sighting
    end

    assert_redirected_to api_v1_sightings_path
  end
end
