require "test_helper"

class PlaylistItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get playlist_items_new_url
    assert_response :success
  end

  test "should get create" do
    get playlist_items_create_url
    assert_response :success
  end

  test "should get edit" do
    get playlist_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get playlist_items_update_url
    assert_response :success
  end
end
