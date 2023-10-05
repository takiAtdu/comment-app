require "test_helper"

class TextsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get texts_index_url
    assert_response :success
  end

  test "should get edit" do
    get texts_edit_url
    assert_response :success
  end

  test "should get update" do
    get texts_update_url
    assert_response :success
  end

  test "should get create" do
    get texts_create_url
    assert_response :success
  end

  test "should get destroy" do
    get texts_destroy_url
    assert_response :success
  end
end
