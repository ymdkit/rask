require "test_helper"

class TagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag = tags(:one)
    @user = users(:one)
  end

  test "should get index" do
    log_in_as(@user)
    get tags_url
    assert_response :success
  end

  test "should get new" do
    log_in_as(@user)
    get new_tag_url
    assert_response :success
  end

  test "should create tag" do
    log_in_as(@user)
    assert_difference('Tag.count') do
      post tags_url, params: { tag: { name: "Tag3" } }
    end

    assert_redirected_to tag_url(Tag.last)
  end

  test "should show tag" do
    log_in_as(@user)
    get tag_url(@tag)
    assert_response :success
  end

  test "should get edit" do
    log_in_as(@user)
    get edit_tag_url(@tag)
    assert_response :success
  end

  test "should update tag" do
    log_in_as(@user)
    patch tag_url(@tag), params: { tag: { name: @tag.name } }
    assert_redirected_to tag_url(@tag)
  end

  test "should destroy tag" do
    log_in_as(@user)
    assert_difference('Tag.count', -1) do
      delete tag_url(@tag)
    end

    assert_redirected_to tags_url
  end
end
