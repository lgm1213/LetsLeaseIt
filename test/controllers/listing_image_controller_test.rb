require 'test_helper'

class ListingImageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listing_image_index_url
    assert_response :success
  end

  test "should get new" do
    get listing_image_new_url
    assert_response :success
  end

  test "should get create" do
    get listing_image_create_url
    assert_response :success
  end

end
