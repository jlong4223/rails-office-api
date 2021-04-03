require "test_helper"

class SwansonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swanson = swansons(:one)
  end

  test "should get index" do
    get swansons_url, as: :json
    assert_response :success
  end

  test "should create swanson" do
    assert_difference('Swanson.count') do
      post swansons_url, params: { swanson: { author: @swanson.author, quote: @swanson.quote } }, as: :json
    end

    assert_response 201
  end

  test "should show swanson" do
    get swanson_url(@swanson), as: :json
    assert_response :success
  end

  test "should update swanson" do
    patch swanson_url(@swanson), params: { swanson: { author: @swanson.author, quote: @swanson.quote } }, as: :json
    assert_response 200
  end

  test "should destroy swanson" do
    assert_difference('Swanson.count', -1) do
      delete swanson_url(@swanson), as: :json
    end

    assert_response 204
  end
end
