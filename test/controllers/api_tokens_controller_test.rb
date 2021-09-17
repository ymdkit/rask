require "test_helper"

class ApiTokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_token = api_tokens(:one)
    @user = users(:one)
    @api_token.user = @user
    OmniAuth.config.test_mode = true
  end

  test "should get index" do
    log_in_as(@user)
    get api_tokens_url
    assert_response :success
  end

  test "should get new" do
    log_in_as(@user)
    get new_api_token_url
    assert_response :success
  end

  test "should create api_token" do
    log_in_as(@user)
    assert_difference('ApiToken.count') do
      post api_tokens_url, params: { api_token: { description: @api_token.description, expired_at: @api_token.expired_at, secret: @api_token.secret, user_id: @api_token.user_id } }
    end

    assert_redirected_to api_token_url(ApiToken.last)
  end

  test "should show api_token" do
    log_in_as(@user)
    get api_token_url(@api_token)
    assert_response :success
  end

  test "should get edit" do
    log_in_as(@user)
    get edit_api_token_url(@api_token)
    assert_response :success
  end

  test "should update api_token" do
    log_in_as(@user)
    patch api_token_url(@api_token), params: { api_token: { description: @api_token.description, expired_at: @api_token.expired_at, secret: @api_token.secret, user_id: @api_token.user_id } }
    assert_redirected_to api_token_url(@api_token)
  end

  test "should destroy api_token" do
    log_in_as(@user)
    assert_difference('ApiToken.count', -1) do
      delete api_token_url(@api_token)
    end

    assert_redirected_to api_tokens_url
  end
end
