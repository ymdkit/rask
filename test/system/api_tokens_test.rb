require "application_system_test_case"

class ApiTokensTest < ApplicationSystemTestCase
  setup do
    @api_token = api_tokens(:one)
  end

  test "visiting the index" do
    visit api_tokens_url
    assert_selector "h1", text: "Api Tokens"
  end

  test "creating a Api token" do
    visit api_tokens_url
    click_on "New Api Token"

    fill_in "Description", with: @api_token.description
    fill_in "Expired at", with: @api_token.expired_at
    fill_in "Secret", with: @api_token.secret
    fill_in "User", with: @api_token.user_id
    click_on "Create Api token"

    assert_text "Api token was successfully created"
    click_on "Back"
  end

  test "updating a Api token" do
    visit api_tokens_url
    click_on "Edit", match: :first

    fill_in "Description", with: @api_token.description
    fill_in "Expired at", with: @api_token.expired_at
    fill_in "Secret", with: @api_token.secret
    fill_in "User", with: @api_token.user_id
    click_on "Update Api token"

    assert_text "Api token was successfully updated"
    click_on "Back"
  end

  test "destroying a Api token" do
    visit api_tokens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Api token was successfully destroyed"
  end
end
