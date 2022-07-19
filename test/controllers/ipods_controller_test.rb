require "test_helper"

class IpodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ipods_index_url
    assert_response :success
  end

  test "should get show" do
    get ipods_show_url
    assert_response :success
  end

  test "should get new" do
    get ipods_new_url
    assert_response :success
  end

  test "should get create" do
    get ipods_create_url
    assert_response :success
  end

  test "should get update" do
    get ipods_update_url
    assert_response :success
  end

  test "should get edit" do
    get ipods_edit_url
    assert_response :success
  end
end
